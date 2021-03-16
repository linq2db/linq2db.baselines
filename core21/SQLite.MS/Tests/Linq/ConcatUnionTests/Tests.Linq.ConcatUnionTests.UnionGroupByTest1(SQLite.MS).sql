BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t3].[c1],
	[t3].[c2],
	[t3].[int_1]
FROM
	(
		SELECT
			[t2].[c1],
			[t2].[c2],
			[t2].[int_1]
		FROM
			(
				SELECT
					[t1].[c1],
					[t1].[c2],
					1 as [int_1]
				FROM
					(
						SELECT
							Cast(StrFTime('%m', [selectParam].[DateTimeValue]) as int) as [c1],
							Cast(StrFTime('%Y', [selectParam].[DateTimeValue]) as int) as [c2]
						FROM
							[LinqDataTypes] [selectParam]
					) [t1]
				GROUP BY
					[t1].[c1],
					[t1].[c2]
			) [t2]
		UNION
		SELECT
			[_].[SmallIntValue] as [c1],
			[_].[SmallIntValue] as [c2],
			3 as [int_1]
		FROM
			[LinqDataTypes] [_]
	) [t3]
UNION
SELECT
	Cast(StrFTime('%Y', [_1].[DateTimeValue]) as int),
	Cast(StrFTime('%Y', [_1].[DateTimeValue]) as int),
	2
FROM
	[LinqDataTypes] [_1]

BeforeExecute
-- SQLite.MS SQLite

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

