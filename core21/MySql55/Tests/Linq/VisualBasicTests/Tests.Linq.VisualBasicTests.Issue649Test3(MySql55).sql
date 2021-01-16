BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE `activity649`
(
	`activityid` INT      AUTO_INCREMENT NOT NULL,
	`personid`   INT                     NOT NULL,
	`added`      DATETIME                NOT NULL,

	CONSTRAINT `PK_activity649` PRIMARY KEY CLUSTERED (`activityid`)
)

BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE `person649`
(
	`personid`   INT          AUTO_INCREMENT NOT NULL,
	`personname` VARCHAR(255)                NOT NULL,

	CONSTRAINT `PK_person649` PRIMARY KEY CLUSTERED (`personid`)
)

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE `person649`

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE `activity649`

