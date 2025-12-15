-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	Date(`d`.`DateTimeValue`)
FROM
	`LinqDataTypes` `d`
WHERE
	Extract(day from `d`.`DateTimeValue`) > 0

