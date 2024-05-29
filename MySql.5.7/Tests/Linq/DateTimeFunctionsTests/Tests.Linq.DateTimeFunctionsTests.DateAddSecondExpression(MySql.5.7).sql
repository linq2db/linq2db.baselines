BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @p Int32
SET     @p = 41

SELECT
	Extract(second from Date_Add(`t`.`DateTimeValue`, Interval @p Second))
FROM
	`LinqDataTypes` `t`

