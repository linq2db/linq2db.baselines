-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	Date(CAST(CAST(`d`.`DateTimeValue` AS CHAR(27)) AS DATETIME))
FROM
	`LinqDataTypes` `d`
WHERE
	Extract(day from CAST(CAST(`d`.`DateTimeValue` AS CHAR(27)) AS DATETIME)) > 0

