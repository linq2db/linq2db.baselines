BeforeExecute
-- Access AccessOleDb

SELECT
	[t4].[month_1],
	[t4].[year_1],
	[t4].[int_1]
FROM
	(
		SELECT
			[t2].[month_1],
			[t2].[year_1],
			[t2].[c1] as [int_1]
		FROM
			(
				SELECT
					[t1].[c1] as [month_1],
					[t1].[c2] as [year_1],
					1 as [c1]
				FROM
					(
						SELECT
							DatePart('m', [selectParam].[DateTimeValue]) as [c1],
							DatePart('yyyy', [selectParam].[DateTimeValue]) as [c2]
						FROM
							[LinqDataTypes] [selectParam]
					) [t1]
				GROUP BY
					[t1].[c1],
					[t1].[c2]
			) [t2]
		UNION
		SELECT
			[t3].[year_1] as [month_1],
			[t3].[year_1],
			[t3].[c1] as [int_1]
		FROM
			(
				SELECT
					[_].[SmallIntValue] as [year_1],
					3 as [c1]
				FROM
					[LinqDataTypes] [_]
			) [t3]
	) [t4]
UNION
SELECT
	[t5].[year_1],
	[t5].[year_1],
	[t5].[c1]
FROM
	(
		SELECT
			DatePart('yyyy', [_1].[DateTimeValue]) as [year_1],
			2 as [c1]
		FROM
			[LinqDataTypes] [_1]
	) [t5]

BeforeExecute
-- Access AccessOleDb

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

