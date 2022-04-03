﻿BeforeExecute
-- MariaDB MySql.Official MySql

CREATE TABLE `activity649`
(
	`activityid` INT      AUTO_INCREMENT NOT NULL,
	`personid`   INT                     NOT NULL,
	`added`      DATETIME                NOT NULL,

	CONSTRAINT `PK_activity649` PRIMARY KEY CLUSTERED (`activityid`)
)

BeforeExecute
-- MariaDB MySql.Official MySql

CREATE TABLE `person649`
(
	`personid`   INT          AUTO_INCREMENT NOT NULL,
	`personname` VARCHAR(255)                NOT NULL,

	CONSTRAINT `PK_person649` PRIMARY KEY CLUSTERED (`personid`)
)

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @added DateTime
SET     @added = '2017-01-01'

SELECT
	`a_Person`.`personid`,
	`a_Person`.`personname`,
	Max(`p`.`added`)
FROM
	`activity649` `p`
		INNER JOIN `person649` `a_Person` ON `p`.`personid` = `a_Person`.`personid`
WHERE
	`p`.`added` >= @added
GROUP BY
	`a_Person`.`personid`,
	`a_Person`.`personname`

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE IF EXISTS `person649`

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE IF EXISTS `activity649`

