BeforeExecute
-- SqlCe (asynchronously)

SELECT TOP (1)
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
	[t].[ID] = 1

BeforeExecute
-- SqlCe (asynchronously)
DECLARE @dt DateTime
SET     @dt = '2010-12-14 05:00:07.425'

UPDATE
	[LinqDataTypes]
SET
	[DateTimeValue] = @dt
WHERE
	[LinqDataTypes].[ID] = 1

BeforeExecute
-- SqlCe (asynchronously)

SELECT TOP (1)
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
	[t].[ID] = 1

BeforeExecute
-- SqlCe (asynchronously)
DECLARE @pdt DateTime
SET     @pdt = '2001-01-11 01:11:21.100'

UPDATE
	[LinqDataTypes]
SET
	[DateTimeValue] = @pdt
WHERE
	[LinqDataTypes].[ID] = 1

