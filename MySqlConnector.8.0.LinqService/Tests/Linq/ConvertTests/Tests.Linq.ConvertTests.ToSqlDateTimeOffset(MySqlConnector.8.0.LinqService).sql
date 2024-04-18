BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	Cast(Concat(Cast(Extract(year from `t`.`DateTimeValue`) as CHAR(11)), '-01-01 00:20:00') as DateTime)
FROM
	`LinqDataTypes` `t`

