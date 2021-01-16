BeforeExecute
-- MySqlConnector MySql

CREATE TABLE `activity649`
(
	`activityid` INT      AUTO_INCREMENT NOT NULL,
	`personid`   INT                     NOT NULL,
	`added`      DATETIME                NOT NULL,

	CONSTRAINT `PK_activity649` PRIMARY KEY CLUSTERED (`activityid`)
)

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE `person649`
(
	`personid`   INT          AUTO_INCREMENT NOT NULL,
	`personname` VARCHAR(255)                NOT NULL,

	CONSTRAINT `PK_person649` PRIMARY KEY CLUSTERED (`personid`)
)

BeforeExecute
-- MySqlConnector MySql

DROP TABLE `person649`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE `activity649`

