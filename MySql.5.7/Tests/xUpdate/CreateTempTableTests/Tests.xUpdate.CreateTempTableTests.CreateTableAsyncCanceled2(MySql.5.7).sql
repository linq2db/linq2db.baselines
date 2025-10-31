-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `TempTable`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TEMPORARY TABLE `TempTable`
(
	`ID` INT NOT NULL
)

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

INSERT INTO `TempTable`
(
	`ID`
)
SELECT
	`p`.`ParentID`
FROM
	`Parent` `p`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TEMPORARY TABLE IF EXISTS `TempTable`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE `TempTable`

