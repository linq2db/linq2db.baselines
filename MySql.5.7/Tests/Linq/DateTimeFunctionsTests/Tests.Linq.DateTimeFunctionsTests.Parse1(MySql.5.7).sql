-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	Date(`d`.`DateTimeValue`)
FROM
	`LinqDataTypes` `d`
WHERE
	Extract(day from `d`.`DateTimeValue`) > 0

