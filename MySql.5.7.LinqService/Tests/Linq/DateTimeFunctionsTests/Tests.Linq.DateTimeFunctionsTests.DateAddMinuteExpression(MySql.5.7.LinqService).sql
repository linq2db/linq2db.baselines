BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57 (asynchronously)
DECLARE @Value Int32
SET     @Value = 5

SELECT
	Extract(minute from Date_Add(`t`.`DateTimeValue`, Interval @Value Minute))
FROM
	`LinqDataTypes` `t`

