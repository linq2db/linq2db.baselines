BeforeExecute
-- MySql MySql.Official MySql

SELECT
	Extract(second from Date_Add(`t`.`DateTimeValue`, Interval 41 Second))
FROM
	`LinqDataTypes` `t`

