<?php

namespace App\Model;

class CommandsUserManager extends AbstractManager
{
    protected const TABLE = 'commande';

    public function __construct()
    {
        parent::__construct(self::TABLE);
    }

    public function showAllCommandUser(int $id)
    {
        $statement = $this->pdo->prepare("SELECT commande.* FROM commande JOIN user ON commande.id_user=user.id WHERE commande.id_user=:id");
        $statement->bindValue('id', $id, \PDO::PARAM_INT);
        $statement->execute();
        return $statement->fetchAll();
    }
    public function showOneCommandUser(int $id)
    {
        $statement = $this->pdo->prepare("SELECT article.* FROM article 
        JOIN article_commande ON article_commande.id_article=article.id
        JOIN commande ON article_commande.id_commande=commande.id WHERE commande.id=:id");
        $statement->bindValue('id', $id, \PDO::PARAM_INT);
        $statement->execute();
        return $statement->fetchAll();
    }

}

?>
