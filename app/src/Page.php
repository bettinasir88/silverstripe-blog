<?php

namespace {

    use SilverStripe\Assets\Image;
    use SilverStripe\AssetAdmin\Forms\UploadField;
    use SilverStripe\Forms\TextareaField;
    use SilverStripe\CMS\Model\SiteTree;

    class Page extends SiteTree
    {
        private static $db = [
            'Subheading'  => 'Text',
        ];

        private static $has_one = [
            'BannerImage' => Image::class,
        ];

        private static $owns = [
            'BannerImage',
        ];

        public function getCMSFields() 
        {
            $fields = parent::getCMSFields();

            $fields->addFieldToTab('Root.Main', TextareaField::create('Subheading')
                ->setDescription('A summary line or teaser'), 
                'Content'
            );

            $fields->addFieldToTab('Root.Attachments', $image = UploadField::create('BannerImage'));

            $image->setFolderName('banner-images');

            return $fields;
        }
    }
}
