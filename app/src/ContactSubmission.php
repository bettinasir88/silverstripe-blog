<?php

namespace SilverStripe\Blog;

use SilverStripe\ORM\DataObject;

class ContactSubmission extends DataObject
{
    private static $db = [
        'Name'    => 'Varchar',
        'Email'   => 'Varchar',
        'Message' => 'Text',
    ];
}