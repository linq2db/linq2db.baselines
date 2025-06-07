BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @part1 Int32
SET     @part1 = 4
DECLARE @part2 Int32
SET     @part2 = 4

SELECT
	Date_Add(`t`.`DateTimeValue`, Interval ((`t`.`SmallIntValue` + @part1) - @part2) Minute)
FROM
	`LinqDataTypes` `t`

