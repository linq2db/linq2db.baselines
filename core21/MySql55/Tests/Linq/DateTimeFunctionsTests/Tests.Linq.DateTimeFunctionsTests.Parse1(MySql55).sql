BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	`d`.`DateTimeValue`
FROM
	`LinqDataTypes` `d`
WHERE
	Extract(day from `d`.`DateTimeValue`) > 0

