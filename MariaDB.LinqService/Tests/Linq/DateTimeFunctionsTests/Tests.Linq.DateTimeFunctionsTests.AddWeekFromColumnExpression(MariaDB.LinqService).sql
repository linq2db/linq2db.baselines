﻿BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @part1 Int16
SET     @part1 = 4
DECLARE @part2 Int32
SET     @part2 = 4

SELECT
	Date(Date_Add(`t`.`DateTimeValue`, Interval ((`t`.`SmallIntValue` + @part1) - @part2) Week))
FROM
	`LinqDataTypes` `t`

