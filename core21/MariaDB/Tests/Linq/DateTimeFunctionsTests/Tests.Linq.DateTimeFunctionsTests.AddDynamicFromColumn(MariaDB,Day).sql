BeforeExecute
-- MariaDB MySql.Official MySql

SELECT 
	Date_Add(`t`.`DateTimeValue`, Interval `t`.`SmallIntValue` Day)
FROM
	`LinqDataTypes` `t`

