BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	DateTime('2010-' || CASE
		WHEN Length([p].[ID]) = 1 THEN '0' || Cast([p].[ID] as VarChar(11))
		ELSE [p].[ID]
	END || '-01 20:35:44')
FROM
	[LinqDataTypes] [p]
WHERE
	Cast(StrFTime('%Y', DateTime('2010-' || CASE
		WHEN Length([p].[ID]) = 1 THEN '0' || Cast([p].[ID] as VarChar(11))
		ELSE [p].[ID]
	END || '-01 20:35:44')) as int) = 2010

