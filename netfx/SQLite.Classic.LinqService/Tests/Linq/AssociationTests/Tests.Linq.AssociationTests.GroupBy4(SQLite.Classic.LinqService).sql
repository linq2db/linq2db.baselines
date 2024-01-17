BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[Key_1]
FROM
	(
		SELECT
			Cast(StrFTime('%Y', [selectParam].[DateTimeValue]) as int) as [Key_1]
		FROM
			[LinqDataTypes] [selectParam]
	) [t1]
GROUP BY
	[t1].[Key_1]

