BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Date DateTime
SET     @Date = '2009-09-20'

SELECT
	[t].[ID],
	[t].[MoneyValue],
	[t].[DateTimeValue],
	[t].[DateTimeValue2],
	[t].[BoolValue],
	[t].[GuidValue],
	[t].[SmallIntValue],
	[t].[IntValue],
	[t].[BigIntValue],
	[t].[StringValue]
FROM
	[LinqDataTypes] [t]
WHERE
	CONVERT(Date, [t].[DateTimeValue]) > @Date

