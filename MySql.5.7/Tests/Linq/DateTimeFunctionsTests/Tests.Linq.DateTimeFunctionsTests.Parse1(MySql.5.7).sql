-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	Date(CAST(CAST(`d`.`DateTimeValue` AS CHAR(27)) AS DATETIME))
FROM
	`LinqDataTypes` `d`
WHERE
	Extract(day from CAST(CAST(`d`.`DateTimeValue` AS CHAR(27)) AS DATETIME)) > 0

