<?php

namespace App\Controller;

use App\Model\CommandsUserManager;

class CommandsUserController extends AbstractController
{
    public function showAll(int $id)
    {
        $commandsUserManager = new CommandsUserManager();
        $commandsUser = $commandsUserManager->showAllCommandUser($id);

        $commandUserManager = new CommandsUserManager();
        $commandUser = $commandUserManager->showOneCommandUser($id);

        return $this->twig->render('User/commandsUser.html.twig', ['commandsUser' =>$commandsUser,'commandUser' =>$commandUser]);
    }
}

?>