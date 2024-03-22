﻿BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `activity649`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `activity649`
(
	`activityid` INT      AUTO_INCREMENT NOT NULL,
	`personid`   INT                     NOT NULL,
	`added`      DATETIME                NOT NULL,

	CONSTRAINT `PK_activity649` PRIMARY KEY CLUSTERED (`activityid`)
)

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `person649`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `person649`
(
	`personid`   INT           AUTO_INCREMENT NOT NULL,
	`personname` VARCHAR(4000)                NOT NULL,

	CONSTRAINT `PK_person649` PRIMARY KEY CLUSTERED (`personid`)
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @added Datetime -- DateTime
SET     @added = '2017-01-01'

SELECT
	`a_Person`.`personid`,
	`a_Person`.`personname`,
	MAX(`$VB$It`.`added`)
FROM
	`activity649` `$VB$It`
		INNER JOIN `person649` `a_Person` ON `$VB$It`.`personid` = `a_Person`.`personid`
WHERE
	`$VB$It`.`added` >= @added
GROUP BY
	`a_Person`.`personid`,
	`a_Person`.`personname`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `person649`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `activity649`

