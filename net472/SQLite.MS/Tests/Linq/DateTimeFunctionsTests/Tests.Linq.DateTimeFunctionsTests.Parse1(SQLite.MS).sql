BeforeExecute
-- SQLite.MS SQLite

SELECT
	[d].[c1]
FROM
	(
		SELECT
			[t].[DateTimeValue] as [c1]
		FROM
			[LinqDataTypes] [t]
	) [d]
WHERE
	Cast(StrFTime('%d', [d].[c1]) as int) > 0

