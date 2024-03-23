BeforeExecute
-- MySql MySql.Official MySql

SELECT
	Cast(Date_Add(`t`.`DateTimeValue`, Interval -1 Quarter) as Date)
FROM
	`LinqDataTypes` `t`

