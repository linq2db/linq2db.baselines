BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @p_1 NVarChar(5) -- String
SET     @p_1 = '2010-'

SELECT
	Date(@p_1 || CASE
		WHEN Length([p].[ID]) = 1 THEN '0' || Cast([p].[ID] as VarChar(11))
		ELSE [p].[ID]
	END || '-01')
FROM
	[LinqDataTypes] [p]
WHERE
	Cast(StrFTime('%Y', Date(@p_1 || CASE
		WHEN Length([p].[ID]) = 1 THEN '0' || Cast([p].[ID] as VarChar(11))
		ELSE [p].[ID]
	END || '-01')) as int) = 2010

