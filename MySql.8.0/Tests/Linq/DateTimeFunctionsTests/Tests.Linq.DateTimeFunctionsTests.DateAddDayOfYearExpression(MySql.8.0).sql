BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Value Int32
SET     @Value = 3

SELECT
	Date(Date_Add(`t`.`DateTimeValue`, Interval @Value Day))
FROM
	`LinqDataTypes` `t`

