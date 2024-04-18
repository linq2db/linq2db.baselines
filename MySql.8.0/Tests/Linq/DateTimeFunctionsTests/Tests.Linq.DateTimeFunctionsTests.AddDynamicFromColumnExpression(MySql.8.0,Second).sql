BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @part1 Int32
SET     @part1 = 4
DECLARE @part2 Int32
SET     @part2 = 4

SELECT
	Date_Add(`t`.`DateTimeValue`, Interval ((`t`.`SmallIntValue` + @part1) - @part2) Second)
FROM
	`LinqDataTypes` `t`

