BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

DELETE FROM [LinqDataTypes]
FROM
	[LinqDataTypes] [t]
WHERE
	[t].[ID] > 1000

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @arr VarBinary -- Binary
SET     @arr = NULL

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
	@arr
)

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

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
-- Sybase.Managed Sybase (asynchronously)

DELETE FROM [LinqDataTypes]
FROM
	[LinqDataTypes] [t]
WHERE
	[t].[ID] > 1000

