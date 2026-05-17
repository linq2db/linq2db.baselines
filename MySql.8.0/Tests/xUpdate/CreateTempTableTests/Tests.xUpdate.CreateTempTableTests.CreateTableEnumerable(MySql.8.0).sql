-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `TempTable`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`p`.`ParentID`
FROM
	`Parent` `p`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `TempTable`
(
	`ID` INT NOT NULL,

	CONSTRAINT `PK_TempTable` PRIMARY KEY CLUSTERED (`ID`)
)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

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

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`ID`
FROM
	`Parent` `p`
		INNER JOIN `TempTable` `t` ON `p`.`ParentID` = `t`.`ID`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `TempTable`

