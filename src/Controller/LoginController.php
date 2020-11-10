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
 * Class LoginController
 *
 */
class LoginController extends AbstractController
{


    /**
     * Display Login listing
     *
     * @return string
     * @throws \Twig\Error\LoaderError
     * @throws \Twig\Error\RuntimeError
     * @throws \Twig\Error\SyntaxError
     */
    public function connection()
    {
        return $this->twig->render('User/connectionUser.html.twig');
    }
    
    public function index()
    {
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $userManager = new UserManager();
            $login =
            [
                'email' => $_POST['email'],
                'password' => $_POST['password'],
            ];
            $user = $userManager->login($login);
            if (is_array($user)) {
                $_SESSION['email'] = $user['email'];
                $_SESSION['password'] = $user['password'];
                header('Location:/User/showUser/' . $user['id']);
            }
        } else {
            return $this->twig->render('User/connectionUser.html.twig');
        }
    }
}
