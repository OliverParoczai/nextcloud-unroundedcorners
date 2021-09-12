<?php

declare(strict_types=1);

namespace OCA\UnroundedCorners\AppInfo;

use OCP\AppFramework\App;
use OCP\AppFramework\Bootstrap\IBootContext;
use OCP\AppFramework\Bootstrap\IBootstrap;
use OCP\AppFramework\Bootstrap\IRegistrationContext;
use OCP\Util;

class Application extends App implements IBootstrap {

    /** @var string */
    public const APP_NAME = 'unroundedcorners';

    /** @var string */
    protected $appName;
    
    public function __construct() {
        parent::__construct(self::APP_NAME);
        $this->appName  = self::APP_NAME;
    }

    public function register(IRegistrationContext $context): void {
	}

    public function boot(IBootContext $context): void {
        Util::addStyle($this->appName, 'unround');
	}
}
