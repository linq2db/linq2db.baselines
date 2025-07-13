BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	Date(`d`.`DateTimeValue`)
FROM
	`LinqDataTypes` `d`
WHERE
	Extract(day from `d`.`DateTimeValue`) > 0

