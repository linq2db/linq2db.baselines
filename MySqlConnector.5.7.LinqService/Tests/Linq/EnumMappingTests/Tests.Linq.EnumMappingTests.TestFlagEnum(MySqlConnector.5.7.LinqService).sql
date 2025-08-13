BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t`.`ID`,
	`t`.`IntValue`
FROM
	`LinqDataTypes` `t`
WHERE
	(`t`.`IntValue` & 1) <> 0

