﻿BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `activity649`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `activity649`
(
	`activityid` INT      AUTO_INCREMENT NOT NULL,
	`personid`   INT                     NOT NULL,
	`added`      DATETIME                NOT NULL,

	CONSTRAINT `PK_activity649` PRIMARY KEY CLUSTERED (`activityid`)
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `person649`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `person649`
(
	`personid`   INT           AUTO_INCREMENT NOT NULL,
	`personname` VARCHAR(4000)                NOT NULL,

	CONSTRAINT `PK_person649` PRIMARY KEY CLUSTERED (`personid`)
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`a_Person`.`personid`,
	`a_Person`.`personname`,
	MAX(`f`.`added`)
FROM
	`activity649` `f`
		INNER JOIN `person649` `a_Person` ON `f`.`personid` = `a_Person`.`personid`
WHERE
	`f`.`added` >= STR_TO_DATE('2017-01-01 00:00:00.000', '%Y-%m-%d %H:%i:%s.%f')
GROUP BY
	`a_Person`.`personid`,
	`a_Person`.`personname`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `person649`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `activity649`

