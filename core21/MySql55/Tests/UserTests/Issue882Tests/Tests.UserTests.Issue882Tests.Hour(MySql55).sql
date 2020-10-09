BeforeExecute
-- MySql55 MySql.Official MySql

SELECT 
	Extract(hour from `t`.`DateTimeValue`) % 7
FROM
	`LinqDataTypes` `t`

