﻿BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t].[ID],
	[t].[MoneyValue],
	[t].[DateTimeValue],
	[t].[BoolValue],
	[t].[GuidValue],
	[t].[BinaryValue],
	[t].[SmallIntValue],
	[t].[StringValue]
FROM
	[LinqDataTypes] [t]
WHERE
	NOT [t].[BoolValue] AND [t].[MoneyValue] > 1 AND ([t].[SmallIntValue] = 5 OR [t].[SmallIntValue] = 7 OR [t].[SmallIntValue] = 8)

