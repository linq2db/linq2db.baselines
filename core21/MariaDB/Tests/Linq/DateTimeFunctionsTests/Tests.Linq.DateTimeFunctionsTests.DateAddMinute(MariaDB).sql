BeforeExecute
-- MariaDB MySql.Official MySql

SELECT 
	Date_Add(`t`.`DateTimeValue`, Interval 5 Minute)
FROM
	`LinqDataTypes` `t`

