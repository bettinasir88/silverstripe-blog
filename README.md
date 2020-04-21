# Simple Blog App on SilverStripe

Powered by [SilverStripe 4](https://docs.silverstripe.org/en/4) and [Laravel Homestead](https://laravel.com/docs/7.x/homestead).

This project is a simple blog application built to learn how SilverStripe works. There is a Homepage, Articles, About and Contact pages, all content coming from the CMS.

## Set-up

### Software Requirements

Provisioned in Laravel Homestead:
- NGINX
- PHP 7
- MySQL
- Composer

### Instructions

Install [Laravel Homestead](https://laravel.com/docs/7.x/homestead)

Clone the repo and copy the environment file
```
git clone git@github.com:bettinasir88/silverstripe-blog.git && cd silverstripe-blog && cp .env.example .env
```

Run composer install in the project root folder
```
composer install
```

Make sure your Homestead.yaml has [folders and sites mapped](https://laravel.com/docs/7.x/homestead#configuring-homestead
)

When all is set up, start your vagrant
```
vagrant up
```

Done!! Now go to:
```
http://homestead.test
```

Log into the SilverStripe admin and add your Pages and Articles
```
http://homestead.test/admin
```

### Front-end

[Bootstrap 4.3](https://getbootstrap.com/docs/4.3/getting-started/introduction)

[jQuery 3.4.1](https://api.jquery.com/category/deprecated/deprecated-3.4)


## TODOs

- [ ] Add a search functionality for articles
- [ ] Add better Bootstrap styling to Contact Form - using bootstrap-forms module
- [ ] Add a photo preview for articles listed
