BeforeExecute
-- SqlServer.2012

SELECT
	[it_1].[IsActive],
	[it_1].[Other]
FROM
	(
		SELECT
			1 as [IsActive],
			Convert(Bit, [it].[SmallIntValue]) as [Other]
		FROM
			[LinqDataTypes] [it]
	) [it_1]
GROUP BY
	[it_1].[IsActive],
	[it_1].[Other]

BeforeExecute
-- SqlServer.2012

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

