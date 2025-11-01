-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `TempTable`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`p`.`ParentID`
FROM
	`Parent` `p`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `TempTable`
(
	`ID` INT NOT NULL
)

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

INSERT INTO `TempTable`
(
	`ID`
)
VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7)

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t`.`ID`
FROM
	`Parent` `p`
		INNER JOIN `TempTable` `t` ON `p`.`ParentID` = `t`.`ID`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `TempTable`

