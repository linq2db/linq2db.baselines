BeforeExecute
-- MySql MySql.Official MySql
DECLARE @part1 Int32
SET     @part1 = 4
DECLARE @part2 Int32
SET     @part2 = 4

SELECT
	Date_Add(`t`.`DateTimeValue`, Interval Cast(((`t`.`SmallIntValue` + @part1) - @part2) as Decimal(29, 10)) Quarter)
FROM
	`LinqDataTypes` `t`

