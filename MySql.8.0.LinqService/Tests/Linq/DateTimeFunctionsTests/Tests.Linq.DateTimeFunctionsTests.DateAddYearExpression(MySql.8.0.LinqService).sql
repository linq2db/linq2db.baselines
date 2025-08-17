BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80 (asynchronously)
DECLARE @Value Int32
SET     @Value = 11

SELECT
	Date(Date_Add(`t`.`DateTimeValue`, Interval @Value Year))
FROM
	`LinqDataTypes` `t`

