BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

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

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @take Int -- Int32
SET     @take = 15

SELECT
	[e].[ID],
	[p].[SmallIntValue]
FROM
	(
		SELECT TOP (@take)
			[t3].[ID]
		FROM
			(
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
				UNION ALL
				SELECT
					[t2].[ID],
					[t2].[MoneyValue],
					[t2].[DateTimeValue],
					[t2].[BoolValue],
					[t2].[GuidValue],
					[t2].[BinaryValue],
					[t2].[SmallIntValue],
					[t2].[StringValue]
				FROM
					[LinqDataTypes] [t2]
			) [t3]
	) [e]
		LEFT JOIN (
			SELECT TOP (@take)
				[t6].[ID],
				[t6].[SmallIntValue]
			FROM
				(
					SELECT
						[t4].[ID],
						[t4].[MoneyValue],
						[t4].[DateTimeValue],
						[t4].[BoolValue],
						[t4].[GuidValue],
						[t4].[BinaryValue],
						[t4].[SmallIntValue],
						[t4].[StringValue]
					FROM
						[LinqDataTypes] [t4]
					UNION ALL
					SELECT
						[t5].[ID],
						[t5].[MoneyValue],
						[t5].[DateTimeValue],
						[t5].[BoolValue],
						[t5].[GuidValue],
						[t5].[BinaryValue],
						[t5].[SmallIntValue],
						[t5].[StringValue]
					FROM
						[LinqDataTypes] [t5]
				) [t6]
		) [p] ON [p].[ID] = [e].[ID]
ORDER BY
	[e].[ID],
	[p].[ID]

