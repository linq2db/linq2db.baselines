BeforeExecute
-- Sybase.Managed Sybase
DECLARE @p Char(36) -- AnsiStringFixedLength
SET     @p = '40932fdb-1543-4e4a-ac2c-ca371604fb4b'

SELECT TOP 2
	[p].[ID],
	[p].[MoneyValue],
	[p].[DateTimeValue],
	[p].[BoolValue],
	[p].[GuidValue],
	[p].[BinaryValue],
	[p].[SmallIntValue],
	[p].[StringValue]
FROM
	[LinqDataTypes] [p]
WHERE
	[p].[GuidValue] = @p

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @p Char(36) -- AnsiStringFixedLength
SET     @p = 'd2f970c0-35ac-4987-9cd5-5badb1757436'

SELECT TOP 2
	[p].[ID],
	[p].[MoneyValue],
	[p].[DateTimeValue],
	[p].[BoolValue],
	[p].[GuidValue],
	[p].[BinaryValue],
	[p].[SmallIntValue],
	[p].[StringValue]
FROM
	[LinqDataTypes] [p]
WHERE
	[p].[GuidValue] = @p

