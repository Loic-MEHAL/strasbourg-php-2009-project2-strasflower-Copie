<?php

/**
 * Created by PhpStorm.
 * User: root
 * Date: 11/10/17
 * Time: 16:07
 * PHP version 7
 */

namespace App\Controller;

use App\Model\UserManager;

/**
 * Class UserController
 *
 */
class UserController extends AbstractController
{
    /**
     * Display registration page
     *
     * @return string
     * @throws \Twig\Error\LoaderError
     * @throws \Twig\Error\RuntimeError
     * @throws \Twig\Error\SyntaxError
     */

    public function registration()
    {
        return $this->twig->render('User/registrationUser.html.twig');
    }

    public function add()
    {
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $userManager = new UserManager();
            if ($_POST['sexe'] === 'Homme') {
                $sexe = '1';
            } else {
                $sexe = '0';
            }
            $user =
            [
                'email' => $_POST['email'],
                'nom' => $_POST['nom'],
                'prenom' => $_POST ['prenom'],
                'password' => $_POST['password'],
                'adress' => $_POST['adress'],
                'age' => $_POST['age'],
                'sexe' => $sexe,
                'admin' => 0
            ];
            $id = $userManager->addUser($user);
            header('Location:/User/showUser/' . $id);
        } else {
            return $this->twig->render('User/registrationUser.html.twig');
        }
    }

    public function showUser(int $id)
    {
        $userManager = new UserManager();
        $user = $userManager->selectOneById($id);

        return $this->twig->render('User/indexUser.html.twig', ['user' => $user]);
    }
    public function editUser(int $id)
    {
        $userManager = new UserManager();
        $user = $userManager->selectOneById($id);

        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            if ($_POST['sexe'] === 'Homme') {
                $sexe = '1';
            } else {
                $sexe = '0';
            }
            $user['email'] = $_POST['email'];
            $user['nom'] = $_POST['nom'];
            $user['prenom'] = $_POST['prenom'];
            $user['password'] = $_POST['password'];
            $user['adress'] = $_POST['adress'];
            $user['age'] = $_POST['age'];
            $user['sexe'] = $sexe;
            $user['admin'] = 0;

            $userManager->updateUser($user);
        }
            return $this->twig->render('User/editUser.html.twig', ['user'=>$user]);
    }
    public function deleteUser(int $id)
    {
        $userManager = new userManager();
        $userManager->delete($id);
        header('Location:/');
    }
}
