BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
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
-- SqlServer.SA SqlServer.2019
DECLARE @dt DateTime2
SET     @dt = DATETIME2FROMPARTS(2010, 12, 14, 5, 0, 7, 4250141, 7)

UPDATE
	[t1]
SET
	[t1].[DateTimeValue2] = @dt
FROM
	[LinqDataTypes] [t1]
WHERE
	[t1].[ID] = 1

BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
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
-- SqlServer.SA SqlServer.2019
DECLARE @pdt DateTime2
SET     @pdt = NULL

UPDATE
	[t1]
SET
	[t1].[DateTimeValue2] = @pdt
FROM
	[LinqDataTypes] [t1]
WHERE
	[t1].[ID] = 1

