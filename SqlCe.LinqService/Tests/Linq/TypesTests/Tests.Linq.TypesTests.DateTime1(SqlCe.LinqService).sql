BeforeExecute
-- SqlCe
DECLARE @dt DateTime
SET     @dt = '2009-09-20 09:19:29.090'

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
	Cast(Floor(Cast([t].[DateTimeValue] as Float)) as DateTime) > Cast(Floor(Cast(@dt as Float)) as DateTime)

