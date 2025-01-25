BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

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
-- SqlServer.2022.MS SqlServer.2022
DECLARE @dt DateTime
SET     @dt = DATETIME2FROMPARTS(2010, 12, 14, 5, 0, 7, 4250141, 7)

UPDATE
	[LinqDataTypes]
SET
	[DateTimeValue] = @dt
WHERE
	[LinqDataTypes].[ID] = 1

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

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
-- SqlServer.2022.MS SqlServer.2022
DECLARE @pdt DateTime
SET     @pdt = DATETIME2FROMPARTS(2001, 1, 11, 1, 11, 21, 1000000, 7)

UPDATE
	[LinqDataTypes]
SET
	[DateTimeValue] = @pdt
WHERE
	[LinqDataTypes].[ID] = 1

