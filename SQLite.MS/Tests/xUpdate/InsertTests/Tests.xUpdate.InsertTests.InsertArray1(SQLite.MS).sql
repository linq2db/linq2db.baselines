-- SQLite.MS SQLite

DELETE FROM
	[LinqDataTypes]
WHERE
	[LinqDataTypes].[ID] > 1000

-- SQLite.MS SQLite

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

-- SQLite.MS SQLite

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

-- SQLite.MS SQLite

DELETE FROM
	[LinqDataTypes]
WHERE
	[LinqDataTypes].[ID] > 1000

