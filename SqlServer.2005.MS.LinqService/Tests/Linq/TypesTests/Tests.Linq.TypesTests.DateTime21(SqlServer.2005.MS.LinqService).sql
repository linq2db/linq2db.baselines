BeforeExecute
-- SqlServer.2005.MS SqlServer.2005 (asynchronously)

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
-- SqlServer.2005.MS SqlServer.2005 (asynchronously)
DECLARE @dt DateTime
SET     @dt = CAST('2010-12-14T05:00:07.425' AS DATETIME)

UPDATE
	[LinqDataTypes]
SET
	[DateTimeValue] = @dt
WHERE
	[LinqDataTypes].[ID] = 1

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005 (asynchronously)

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
-- SqlServer.2005.MS SqlServer.2005 (asynchronously)
DECLARE @pdt DateTime
SET     @pdt = CAST('2001-01-11T01:11:21.100' AS DATETIME)

UPDATE
	[LinqDataTypes]
SET
	[DateTimeValue] = @pdt
WHERE
	[LinqDataTypes].[ID] = 1

