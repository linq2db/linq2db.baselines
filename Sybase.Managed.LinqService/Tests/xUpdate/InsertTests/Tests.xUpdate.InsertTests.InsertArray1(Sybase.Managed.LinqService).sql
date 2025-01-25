BeforeExecute
-- Sybase.Managed Sybase

DELETE FROM [LinqDataTypes]
FROM
	[LinqDataTypes] [t]
WHERE
	[t].[ID] > 1000

BeforeExecute
-- Sybase.Managed Sybase

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
-- Sybase.Managed Sybase

SELECT TOP 2
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

BeforeExecute
-- Sybase.Managed Sybase

DELETE FROM [LinqDataTypes]
FROM
	[LinqDataTypes] [t]
WHERE
	[t].[ID] > 1000

