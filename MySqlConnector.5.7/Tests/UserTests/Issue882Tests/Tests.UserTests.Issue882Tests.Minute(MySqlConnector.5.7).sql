BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	Extract(minute from `t`.`DateTimeValue`) % 7
FROM
	`LinqDataTypes` `t`

