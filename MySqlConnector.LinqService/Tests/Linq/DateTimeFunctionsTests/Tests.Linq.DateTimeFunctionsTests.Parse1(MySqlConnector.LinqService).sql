BeforeExecute
-- MySqlConnector MySql

SELECT
	Cast(`d`.`DateTimeValue` as Date)
FROM
	`LinqDataTypes` `d`
WHERE
	Extract(day from `d`.`DateTimeValue`) > 0

