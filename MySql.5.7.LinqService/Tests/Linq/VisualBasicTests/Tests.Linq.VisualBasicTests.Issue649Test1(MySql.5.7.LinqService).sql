BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `activity649`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `activity649`
(
	`activityid` INT      AUTO_INCREMENT NOT NULL,
	`personid`   INT                     NOT NULL,
	`added`      DATETIME                NOT NULL,

	CONSTRAINT `PK_activity649` PRIMARY KEY CLUSTERED (`activityid`)
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `person649`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `person649`
(
	`personid`   INT           AUTO_INCREMENT NOT NULL,
	`personname` VARCHAR(4000)                NOT NULL,

	CONSTRAINT `PK_person649` PRIMARY KEY CLUSTERED (`personid`)
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

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
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `person649`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `activity649`

