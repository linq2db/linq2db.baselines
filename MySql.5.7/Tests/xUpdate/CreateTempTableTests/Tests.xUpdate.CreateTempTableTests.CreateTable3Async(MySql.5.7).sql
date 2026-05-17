-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `TempTable`
(
	`ID` INT NOT NULL,

	CONSTRAINT `PK_TempTable` PRIMARY KEY CLUSTERED (`ID`)
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

SELECT
	`t`.`ID`
FROM
	`Parent` `p`
		INNER JOIN `TempTable` `t` ON `p`.`ParentID` = `t`.`ID`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `TempTable`

