﻿BeforeExecute
-- SQLite.Default SQLite.MS SQLite

SELECT
	[t1].[ID],
	[t1].[MoneyValue],
	[t1].[DateTimeValue],
	[t1].[BoolValue],
	[t1].[GuidValue],
	[t1].[BinaryValue],
	[t1].[SmallIntValue],
	[t1].[StringValue]
FROM
	[LinqDataTypes] [t1]

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	`p`.`c1`
FROM
	(
		SELECT
			Cast(Cast(`t`.`ID` as UNSIGNED) as CHAR(3)) as `c1`
		FROM
			`LinqDataTypes` `t`
	) `p`
WHERE
	Char_Length(`p`.`c1`) > 0

