BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t2].[month_1],
	[t2].[year_1],
	[t2].[int_1]
FROM
	(
		SELECT
			[t1].[month_1],
			[t1].[year_1],
			[t1].[int_1]
		FROM
			(
				SELECT
					Cast(StrFTime('%m', [selectParam].[DateTimeValue]) as int) as [month_1],
					Cast(StrFTime('%Y', [selectParam].[DateTimeValue]) as int) as [year_1],
					1 as [int_1]
				FROM
					[LinqDataTypes] [selectParam]
				GROUP BY
					Cast(StrFTime('%m', [selectParam].[DateTimeValue]) as int),
					Cast(StrFTime('%Y', [selectParam].[DateTimeValue]) as int)
			) [t1]
		UNION
		SELECT
			[_].[SmallIntValue] as [month_1],
			[_].[SmallIntValue] as [year_1],
			3 as [int_1]
		FROM
			[LinqDataTypes] [_]
	) [t2]
UNION
SELECT
	Cast(StrFTime('%Y', [_1].[DateTimeValue]) as int),
	Cast(StrFTime('%Y', [_1].[DateTimeValue]) as int),
	2
FROM
	[LinqDataTypes] [_1]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

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

