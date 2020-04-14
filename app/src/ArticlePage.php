<?php

namespace SilverStripe\Blog;

use SilverStripe\Forms\DateField;
use SilverStripe\Forms\TextareaField;
use SilverStripe\Forms\TextField;

use Page;

class ArticlePage extends Page
{
    private static $can_be_root = false;

    private static $db = [
        'PublishDate' => 'Date',
        'Teaser'      => 'Text',
        'Author'      => 'Varchar',
    ];

    public function getCMSFields() 
    {
        $fields = parent::getCMSFields();

        $fields->addFieldToTab('Root.Main', DateField::create('PublishDate','Publish date'), 'Content');   
        $fields->addFieldToTab('Root.Main', TextareaField::create('Teaser')
            ->setDescription('A summary line'), 
            'Content'
        );
        $fields->addFieldToTab('Root.Main', TextField::create('Author'), 'Content');

        return $fields;
    }
}