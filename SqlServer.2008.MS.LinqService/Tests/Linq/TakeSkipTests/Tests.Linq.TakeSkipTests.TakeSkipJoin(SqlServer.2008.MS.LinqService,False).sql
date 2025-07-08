BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[e].[ID],
	[p_1].[SmallIntValue]
FROM
	(
		SELECT TOP (15)
			[t3].[ID]
		FROM
			(
				SELECT
					[t1].[ID]
				FROM
					[LinqDataTypes] [t1]
				UNION ALL
				SELECT
					[t2].[ID]
				FROM
					[LinqDataTypes] [t2]
			) [t3]
	) [e]
		LEFT JOIN (
			SELECT TOP (15)
				[p].[SmallIntValue],
				[p].[ID]
			FROM
				(
					SELECT
						[t4].[ID],
						[t4].[SmallIntValue]
					FROM
						[LinqDataTypes] [t4]
					UNION ALL
					SELECT
						[t5].[ID],
						[t5].[SmallIntValue]
					FROM
						[LinqDataTypes] [t5]
				) [p]
		) [p_1] ON [p_1].[ID] = [e].[ID]
ORDER BY
	[e].[ID]

