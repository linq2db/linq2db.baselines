BeforeExecute
-- MariaDB MySql.Official MySql

SELECT 
	Date_Add(`t`.`DateTimeValue`, Interval `t`.`SmallIntValue` Hour)
FROM
	`LinqDataTypes` `t`

