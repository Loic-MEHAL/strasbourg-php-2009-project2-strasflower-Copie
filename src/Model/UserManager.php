<?php

/**
 * Created by PhpStorm.
 * User: sylvain
 * Date: 07/03/18
 * Time: 18:20
 * PHP version 7
 */

namespace App\Model;

/**
 *
 */
class UserManager extends AbstractManager
{
    protected const TABLE = 'user';
    /**
     *  Initializes this class.
     */
    public function __construct()
    {
        parent::__construct(self::TABLE);
    }

    public function addUser(array $user)
    {
        $statement = $this->pdo->prepare("INSERT INTO " . self::TABLE . " VALUES 
        (null, :email, :nom, :prenom, :password, :adress, :age,:sexe, :admin)");
        $statement->bindValue(':email', $user['email'], \PDO::PARAM_STR);
        $statement->bindValue(':nom', $user['nom'], \PDO::PARAM_STR);
        $statement->bindValue(':prenom', $user['prenom'], \PDO::PARAM_STR);
        $statement->bindValue(':password', md5($user['password']), \PDO::PARAM_STR);
        $statement->bindValue(':adress', $user['adress'], \PDO::PARAM_STR);
        $statement->bindValue(':age', $user['age'], \PDO::PARAM_INT);
        $statement->bindValue(':sexe', $user['sexe'], \PDO::PARAM_INT);
        $statement->bindValue(':admin', $user['admin'], \PDO::PARAM_INT);

        if ($statement->execute()) {
            return (int)$this->pdo->lastInsertId();
        }
    }
    public function login(array $login)
    {
        $statement = $this->pdo->prepare("SELECT * FROM " . self::TABLE . " WHERE email=:email AND password=:password");
        $statement->bindValue(':email', $login['email'], \PDO::PARAM_STR);
        $statement->bindValue(':password', md5($login['password']), \PDO::PARAM_STR);
        $statement->execute();
        return $statement->fetch();
    }
    public function updateUser(array $user)
    {
        $statement = $this->pdo->prepare("UPDATE" . self::TABLE . "SET email=:email, nom=:nom, prenom=:prenom, password=:password, adress=:adress, age=:age,sexe=:sexe WHERE user.id=:id");
        $statement->bindValue('id', $id, \PDO::PARAM_INT);
        $statement->bindValue(':email', $user['email'], \PDO::PARAM_STR);
        $statement->bindValue(':nom', $user['nom'], \PDO::PARAM_STR);
        $statement->bindValue(':prenom', $user['prenom'], \PDO::PARAM_STR);
        $statement->bindValue(':password', md5($user['password']), \PDO::PARAM_STR);
        $statement->bindValue(':adress', $user['adress'], \PDO::PARAM_STR);
        $statement->bindValue(':age', $user['age'], \PDO::PARAM_INT);
        $statement->bindValue(':sexe', $user['sexe'], \PDO::PARAM_INT);
        $statement->bindValue(':admin', $user['admin'], \PDO::PARAM_INT);

        return $statement->execute();
    }
    public function delete(int $id): void
    {
        $statement = $this->pdo->prepare("DELETE FROM " . self::TABLE . " WHERE id=:id");
        $statement->bindValue('id', $id, \PDO::PARAM_INT);
        $statement->execute();
    }
}
