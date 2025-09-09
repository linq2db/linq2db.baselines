BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80 (asynchronously)
DECLARE @Minute Int32
SET     @Minute = -8

SELECT
	Extract(minute from Date_Add(`t`.`DateTimeValue`, Interval @Minute Minute))
FROM
	`LinqDataTypes` `t`

