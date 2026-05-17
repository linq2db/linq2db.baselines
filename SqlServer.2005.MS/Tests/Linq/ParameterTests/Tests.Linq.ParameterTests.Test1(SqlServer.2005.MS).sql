-- SqlServer.2005.MS SqlServer.2005
DECLARE @dt DateTime
SET     @dt = CAST('2020-02-29T17:54:55.123' AS DATETIME)

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
	[t].[DateTimeValue] = @dt

