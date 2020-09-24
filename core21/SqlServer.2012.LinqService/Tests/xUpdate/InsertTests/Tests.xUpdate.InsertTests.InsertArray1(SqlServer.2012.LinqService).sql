BeforeExecute
-- SqlServer.2012

DELETE [t1]
FROM
	[LinqDataTypes] [t1]
WHERE
	[t1].[ID] > 1000

BeforeExecute
-- SqlServer.2012

INSERT INTO [LinqDataTypes]
(
	[ID],
	[BoolValue],
	[BinaryValue]
)
VALUES
(
	1001,
	1,
	NULL
)

BeforeExecute
-- SqlServer.2012
DECLARE @take Int -- Int32
SET     @take = 2

SELECT TOP (@take)
	[t].[ID],
	[t].[MoneyValue],
	[t].[DateTimeValue],
	[t].[BoolValue],
	[t].[GuidValue],
	[t].[BinaryValue],
	[t].[SmallIntValue]
FROM
	[LinqDataTypes] [t]
WHERE
	[t].[ID] = 1001

BeforeExecute
-- SqlServer.2012

DELETE [t1]
FROM
	[LinqDataTypes] [t1]
WHERE
	[t1].[ID] > 1000

