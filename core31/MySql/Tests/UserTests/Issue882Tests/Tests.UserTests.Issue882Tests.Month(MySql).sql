BeforeExecute
-- MySql MySql.Official MySql

SELECT 
	Extract(month from `t`.`DateTimeValue`) % 7
FROM
	`LinqDataTypes` `t`

