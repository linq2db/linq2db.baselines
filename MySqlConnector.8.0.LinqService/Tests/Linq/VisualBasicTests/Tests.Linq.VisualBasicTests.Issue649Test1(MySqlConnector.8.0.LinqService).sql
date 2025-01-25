BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `activity649`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `activity649`
(
	`activityid` INT      AUTO_INCREMENT NOT NULL,
	`personid`   INT                     NOT NULL,
	`added`      DATETIME                NOT NULL,

	CONSTRAINT `PK_activity649` PRIMARY KEY CLUSTERED (`activityid`)
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `person649`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `person649`
(
	`personid`   INT           AUTO_INCREMENT NOT NULL,
	`personname` VARCHAR(4000)                NOT NULL,

	CONSTRAINT `PK_person649` PRIMARY KEY CLUSTERED (`personid`)
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`a_Person`.`personid`,
	`a_Person`.`personname`,
	MAX(`VBIt`.`added`)
FROM
	`activity649` `VBIt`
		INNER JOIN `person649` `a_Person` ON `VBIt`.`personid` = `a_Person`.`personid`
WHERE
	`VBIt`.`added` >= STR_TO_DATE('2017-01-01 00:00:00.000', '%Y-%m-%d %H:%i:%s.%f')
GROUP BY
	`a_Person`.`personid`,
	`a_Person`.`personname`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `person649`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `activity649`

