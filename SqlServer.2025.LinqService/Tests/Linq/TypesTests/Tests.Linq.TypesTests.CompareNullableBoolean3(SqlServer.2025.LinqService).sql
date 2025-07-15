BeforeExecute
-- SqlServer.2025 SqlServer.2022
DECLARE @param2 Bit -- Boolean
SET     @param2 = 0

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
	[t].[BoolValue] = @param2

