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

-- SqlServer.2008
DECLARE @dt DateTime
SET     @dt = CAST('2010-12-14T05:00:07.4250141' AS DATETIME2)

UPDATE
	[LinqDataTypes]
SET
	[DateTimeValue] = @dt
WHERE
	[LinqDataTypes].[ID] = 1

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

-- SqlServer.2008
DECLARE @pdt DateTime
SET     @pdt = CAST('2001-01-11T01:11:21.1000000' AS DATETIME2)

UPDATE
	[LinqDataTypes]
SET
	[DateTimeValue] = @pdt
WHERE
	[LinqDataTypes].[ID] = 1

