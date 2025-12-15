-- SqlServer.2012.MS SqlServer.2012

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

-- SqlServer.2012.MS SqlServer.2012
DECLARE @dt DateTime2
SET     @dt = DATETIME2FROMPARTS(2010, 12, 14, 5, 0, 7, 4250141, 7)

UPDATE
	[LinqDataTypes]
SET
	[DateTimeValue2] = @dt
WHERE
	[LinqDataTypes].[ID] = 1

-- SqlServer.2012.MS SqlServer.2012

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

-- SqlServer.2012.MS SqlServer.2012
DECLARE @pdt DateTime2
SET     @pdt = NULL

UPDATE
	[LinqDataTypes]
SET
	[DateTimeValue2] = @pdt
WHERE
	[LinqDataTypes].[ID] = 1

