BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

DELETE [t]
FROM
	[LinqDataTypes] [t]
WHERE
	[t].[ID] > 1000

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

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
-- SqlServer.2019.MS SqlServer.2019

SELECT TOP (2)
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
-- SqlServer.2019.MS SqlServer.2019

DELETE [t]
FROM
	[LinqDataTypes] [t]
WHERE
	[t].[ID] > 1000

