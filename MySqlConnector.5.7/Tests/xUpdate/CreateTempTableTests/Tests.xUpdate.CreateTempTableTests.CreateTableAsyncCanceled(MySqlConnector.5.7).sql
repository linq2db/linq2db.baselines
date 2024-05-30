BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `TempTable`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`p`.`ParentID`
FROM
	`Parent` `p`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57 (asynchronously)

CREATE TEMPORARY TABLE `TempTable`
(
	`ID` INT NOT NULL
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE `TempTable`

