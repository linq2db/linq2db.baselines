BeforeExecute
-- MySql MySql.Official MySql

SELECT
	Extract(year from `selectParam`.`DateTimeValue`)
FROM
	`LinqDataTypes` `selectParam`
GROUP BY
	Extract(year from `selectParam`.`DateTimeValue`)

