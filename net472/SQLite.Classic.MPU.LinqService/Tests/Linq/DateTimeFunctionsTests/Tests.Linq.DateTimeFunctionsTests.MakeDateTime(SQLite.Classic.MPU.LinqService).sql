BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	Date('2010-' || CASE
		WHEN Length([p].[ID]) = 1 THEN '0' || Cast([p].[ID] as VarChar(11))
		ELSE [p].[ID]
	END || '-01')
FROM
	[LinqDataTypes] [p]
WHERE
	Cast(StrFTime('%Y', Date('2010-' || CASE
		WHEN Length([p].[ID]) = 1 THEN '0' || Cast([p].[ID] as VarChar(11))
		ELSE [p].[ID]
	END || '-01')) as int) = 2010

