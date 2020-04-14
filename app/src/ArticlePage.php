<?php

namespace SilverStripe\Blog;

use SilverStripe\Forms\DateField;
use SilverStripe\Forms\TextField;

use Page;

class ArticlePage extends Page
{
    private static $can_be_root = false;

    private static $db = [
        'PublishDate' => 'Date',
        'AuthorName'  => 'Varchar',
    ];

    public function getCMSFields() 
    {
        $fields = parent::getCMSFields();

        $fields->addFieldToTab('Root.Main', DateField::create('PublishDate','Publish date'), 'Content');
        $fields->addFieldToTab('Root.Main', TextField::create('AuthorName', 'Author\'s name'), 'Content');

        return $fields;
    }
}