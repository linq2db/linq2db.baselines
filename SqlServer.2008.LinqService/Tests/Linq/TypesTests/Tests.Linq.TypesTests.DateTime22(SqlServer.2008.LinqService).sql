BeforeExecute
-- SqlServer.2008

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
-- SqlServer.2008
DECLARE @dt DateTime2
SET     @dt = CAST('2010-12-14T05:00:07.4250141' AS DATETIME2)

UPDATE
	[LinqDataTypes]
SET
	[DateTimeValue2] = @dt
WHERE
	[LinqDataTypes].[ID] = 1

BeforeExecute
-- SqlServer.2008

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
-- SqlServer.2008
DECLARE @pdt DateTime2
SET     @pdt = NULL

UPDATE
	[LinqDataTypes]
SET
	[DateTimeValue2] = @pdt
WHERE
	[LinqDataTypes].[ID] = 1

