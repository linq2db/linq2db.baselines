BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

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
-- SqlServer.2017.MS SqlServer.2017
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
				[_1].[ID],
				[_1].[MoneyValue],
				[_1].[DateTimeValue],
				[_1].[BoolValue],
				[_1].[GuidValue],
				[_1].[BinaryValue],
				[_1].[SmallIntValue],
				[_1].[StringValue]
			FROM
				(
					SELECT
						[_].[ID],
						[_].[MoneyValue],
						[_].[DateTimeValue],
						[_].[BoolValue],
						[_].[GuidValue],
						[_].[BinaryValue],
						[_].[SmallIntValue],
						[_].[StringValue]
					FROM
						[LinqDataTypes] [_]
					UNION ALL
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
				) [_1]
		) [p] ON [p].[ID] = [e].[ID]
ORDER BY
	[e].[ID],
	[p].[ID]

