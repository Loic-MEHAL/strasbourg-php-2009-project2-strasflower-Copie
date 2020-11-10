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
class HomeManager extends AbstractManager
{
    /**
     *
     */
    protected const TABLE = 'article';

    /**
     *  Initializes this class.
     */
    public function __construct()
    {
        parent::__construct(self::TABLE);
    }
    
    public function showArticlesIndex(): array
    {
        return $this->pdo->query("SELECT * FROM $this->table  WHERE type =
        'bouquet' ORDER BY RAND() LIMIT 6")->fetchAll();
    }
}
