BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

UPDATE
	`LinqDataTypes` `p`
SET
	`p`.`BoolValue` = 1,
	`p`.`DateTimeValue` = CURRENT_TIMESTAMP
WHERE
	`p`.`ID` = 100000

