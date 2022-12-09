BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `activity649`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `activity649`
(
	`activityid` INT      AUTO_INCREMENT NOT NULL,
	`personid`   INT                     NOT NULL,
	`added`      DATETIME                NOT NULL,

	CONSTRAINT `PK_activity649` PRIMARY KEY CLUSTERED (`activityid`)
)

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `person649`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `person649`
(
	`personid`   INT           AUTO_INCREMENT NOT NULL,
	`personname` VARCHAR(4000)                NOT NULL,

	CONSTRAINT `PK_person649` PRIMARY KEY CLUSTERED (`personid`)
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @added Datetime -- DateTime
SET     @added = '2017-01-01'

SELECT
	`$VB$It`.`c1`,
	`$VB$It`.`c2`,
	Max(`$VB$It`.`added`)
FROM
	(
		SELECT
			`a_Person`.`personid` as `c1`,
			`a_Person`.`personname` as `c2`,
			`p`.`added`
		FROM
			`activity649` `p`
				INNER JOIN `person649` `a_Person` ON `p`.`personid` = `a_Person`.`personid`
		WHERE
			`p`.`added` >= @added
	) `$VB$It`
GROUP BY
	`$VB$It`.`c1`,
	`$VB$It`.`c2`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `person649`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `activity649`

