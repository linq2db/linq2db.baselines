BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	Cast(Concat(Cast(Extract(year from `t`.`DateTimeValue`) as CHAR(11)), '-02-24 00:00:00') as DATETIME)
FROM
	`LinqDataTypes` `t`
WHERE
	Extract(day from Cast(Concat(Cast(Extract(year from `t`.`DateTimeValue`) as CHAR(11)), '-02-24 00:00:00') as DATETIME)) > 0

