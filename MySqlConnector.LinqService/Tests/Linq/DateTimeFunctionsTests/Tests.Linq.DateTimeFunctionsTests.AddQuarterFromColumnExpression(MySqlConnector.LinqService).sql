BeforeExecute
-- MySqlConnector MySql
DECLARE @part1 Int16
SET     @part1 = 4
DECLARE @part2 Int32
SET     @part2 = 4

SELECT
	Cast(Date_Add(`t`.`DateTimeValue`, Interval ((Cast(`t`.`SmallIntValue` as SIGNED) + @part1) - @part2) Quarter) as Date)
FROM
	`LinqDataTypes` `t`

