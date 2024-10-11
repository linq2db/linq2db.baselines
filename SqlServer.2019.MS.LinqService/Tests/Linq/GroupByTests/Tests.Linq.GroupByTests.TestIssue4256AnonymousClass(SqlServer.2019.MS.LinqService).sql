BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	[it_1].[Key_1]
FROM
	(
		SELECT
			1 as [IsActive],
			IIF([it].[SmallIntValue] <> 0, 1, 0) as [Key_1]
		FROM
			[LinqDataTypes] [it]
	) [it_1]
GROUP BY
	[it_1].[IsActive],
	[it_1].[Key_1]

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	[t1].[ID],
	[t1].[MoneyValue],
	[t1].[DateTimeValue],
	[t1].[BoolValue],
	[t1].[GuidValue],
	[t1].[BinaryValue],
	[t1].[SmallIntValue],
	[t1].[StringValue]
FROM
	[LinqDataTypes] [t1]

