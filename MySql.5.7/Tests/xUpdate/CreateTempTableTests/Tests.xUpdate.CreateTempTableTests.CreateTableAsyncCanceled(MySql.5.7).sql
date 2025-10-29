-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `TempTable`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`p`.`ParentID`
FROM
	`Parent` `p`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TEMPORARY TABLE `TempTable`
(
	`ID` INT NOT NULL
)

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE `TempTable`

