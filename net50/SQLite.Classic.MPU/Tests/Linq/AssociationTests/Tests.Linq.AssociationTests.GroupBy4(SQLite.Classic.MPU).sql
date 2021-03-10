BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[c1]
FROM
	(
		SELECT
			Cast(StrFTime('%Y', [selectParam].[DateTimeValue]) as int) as [c1]
		FROM
			[LinqDataTypes] [selectParam]
	) [t1]
GROUP BY
	[t1].[c1]

