CREATE TABLE IF NOT EXISTS `custom_account_transmog` (
	`accountid` INT(10) UNSIGNED NOT NULL,
	`type` INT(10) UNSIGNED NOT NULL,
	`entry` INT(10) UNSIGNED NOT NULL,
	PRIMARY KEY (`accountid`, `type`, `entry`),
	INDEX `accountid` (`accountid`)
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
;

CREATE TABLE IF NOT EXISTS `custom_transmogrification_sets` (
	`owner` INT(10) UNSIGNED NOT NULL,
	`presetid` TINYINT(3) UNSIGNED NOT NULL,
	`setname` TEXT NULL,
	`setdata` TEXT NULL,
	PRIMARY KEY (`owner`, `presetid`),
	INDEX `Owner` (`owner`)
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
;