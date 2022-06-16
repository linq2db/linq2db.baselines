BeforeExecute
-- SQLite.Classic SQLite

DELETE FROM
	[LinqDataTypes]
WHERE
	[LinqDataTypes].[ID] > 1000

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [LinqDataTypes]
(
	[ID],
	[BoolValue],
	[BinaryValue]
)
VALUES
(
	1001,
	1,
	NULL
)

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t].[ID],
	[t].[MoneyValue],
	[t].[DateTimeValue],
	[t].[BoolValue],
	[t].[GuidValue],
	[t].[BinaryValue],
	[t].[SmallIntValue]
FROM
	[LinqDataTypes] [t]
WHERE
	[t].[ID] = 1001
LIMIT 2

BeforeExecute
-- SQLite.Classic SQLite

DELETE FROM
	[LinqDataTypes]
WHERE
	[LinqDataTypes].[ID] > 1000

