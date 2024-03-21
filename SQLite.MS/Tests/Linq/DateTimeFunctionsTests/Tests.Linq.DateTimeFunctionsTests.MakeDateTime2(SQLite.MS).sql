BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t].[ID]
FROM
	[LinqDataTypes] [t]
WHERE
	Cast(StrFTime('%Y', DateTime('2010-' || printf('%02d', [t].[ID]) || '-01 20:35:44')) as int) = 2010

