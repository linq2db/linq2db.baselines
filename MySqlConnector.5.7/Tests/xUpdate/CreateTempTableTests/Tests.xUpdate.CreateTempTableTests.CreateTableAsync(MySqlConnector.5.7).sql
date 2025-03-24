﻿BeforeExecute
--  MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57 (asynchronously)

DROP TABLE IF EXISTS `TempTable`

BeforeExecute
--  MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57 (asynchronously)

CREATE TABLE IF NOT EXISTS `TempTable`
(
	`ID` INT NOT NULL
)

BeforeExecute
--  MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57 (asynchronously)

INSERT INTO `TempTable`
(
	`ID`
)
SELECT
	`p`.`ParentID`
FROM
	`Parent` `p`

BeforeExecute
--  MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t`.`ID`
FROM
	`Parent` `p`
		INNER JOIN `TempTable` `t` ON `p`.`ParentID` = `t`.`ID`

BeforeExecute
--  MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57 (asynchronously)

DROP TABLE IF EXISTS `TempTable`

