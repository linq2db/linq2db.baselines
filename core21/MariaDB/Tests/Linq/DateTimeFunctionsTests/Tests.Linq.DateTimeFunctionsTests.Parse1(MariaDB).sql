BeforeExecute
-- MariaDB MySql.Official MySql

SELECT
	`d`.`DateTimeValue`
FROM
	`LinqDataTypes` `d`
WHERE
	Extract(day from `d`.`DateTimeValue`) > 0

