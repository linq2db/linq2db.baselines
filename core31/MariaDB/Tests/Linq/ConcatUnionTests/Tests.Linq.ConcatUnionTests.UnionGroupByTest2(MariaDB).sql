BeforeExecute
-- MariaDB MySql.Official MySql

SELECT
	`_`.`SmallIntValue`,
	`_`.`SmallIntValue`,
	3
FROM
	`LinqDataTypes` `_`
UNION
SELECT
	Extract(month from `selectParam`.`DateTimeValue`),
	Extract(year from `selectParam`.`DateTimeValue`),
	1
FROM
	`LinqDataTypes` `selectParam`
GROUP BY
	Extract(month from `selectParam`.`DateTimeValue`),
	Extract(year from `selectParam`.`DateTimeValue`)
UNION
SELECT
	Extract(year from `_1`.`DateTimeValue`),
	Extract(year from `_1`.`DateTimeValue`),
	2
FROM
	`LinqDataTypes` `_1`

