BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE IF EXISTS `activity649`

BeforeExecute
-- MariaDB MySql.Official MySql

CREATE TABLE IF NOT EXISTS `activity649`
(
	`activityid` INT      AUTO_INCREMENT NOT NULL,
	`personid`   INT                     NOT NULL,
	`added`      DATETIME                NOT NULL,

	CONSTRAINT `PK_activity649` PRIMARY KEY CLUSTERED (`activityid`)
)

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE IF EXISTS `person649`

BeforeExecute
-- MariaDB MySql.Official MySql

CREATE TABLE IF NOT EXISTS `person649`
(
	`personid`   INT           AUTO_INCREMENT NOT NULL,
	`personname` VARCHAR(4000)                NOT NULL,

	CONSTRAINT `PK_person649` PRIMARY KEY CLUSTERED (`personid`)
)

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @added DateTime
SET     @added = '2017-01-01'

SELECT
	`t1`.`c1`,
	`t1`.`c2`,
	Max(`t1`.`added`)
FROM
	(
		SELECT
			`a_Person`.`personid` as `c1`,
			`a_Person`.`personname` as `c2`,
			`f`.`added`
		FROM
			`activity649` `f`
				INNER JOIN `person649` `a_Person` ON `f`.`personid` = `a_Person`.`personid`
		WHERE
			`f`.`added` >= @added
	) `t1`
GROUP BY
	`t1`.`c1`,
	`t1`.`c2`

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE IF EXISTS `person649`

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE IF EXISTS `activity649`

