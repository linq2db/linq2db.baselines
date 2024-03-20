BeforeExecute
-- MySql MySql.Official MySql
DECLARE @part1 Int16
SET     @part1 = 4
DECLARE @part2 Int32
SET     @part2 = 4

SELECT
	Date_Add(`t`.`DateTimeValue`, Interval ((Cast(`t`.`SmallIntValue` as SIGNED) + @part1) - @part2) Minute)
FROM
	`LinqDataTypes` `t`

