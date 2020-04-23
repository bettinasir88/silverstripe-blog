<?php

namespace SilverStripe\Blog;

use SilverStripe\ORM\DataExtension;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\TextField;

class SiteConfigExtension extends DataExtension 
{
	private static $db = [
		'EtsyURL'      => 'Varchar',
        'InstagramURL' => 'Varchar',
        'PinterestURL' => 'Varchar',
	];

	public function updateCMSFields(FieldList $fields)
    {
        $fields->addFieldsToTab('Root.Social', array (
            TextField::create('EtsyURL','Etsy'),
            TextField::create('InstagramURL','Instagram'),
            TextField::create('PinterestURL','Pinterest'),
        ));
    }
}