-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `TempTable`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TEMPORARY TABLE `TempTable`
(
	`ID` INT NOT NULL,

	CONSTRAINT `PK_TempTable` PRIMARY KEY CLUSTERED (`ID`)
)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

INSERT INTO `TempTable`
(
	`ID`
)
SELECT
	`p`.`ParentID`
FROM
	`Parent` `p`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TEMPORARY TABLE IF EXISTS `TempTable`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE `TempTable`

