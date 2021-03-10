BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @p_1 NVarChar(5) -- String
SET     @p_1 = '2010-'
DECLARE @p_2 NVarChar(2) -- String
SET     @p_2 = '01'

SELECT
	Date(@p_1 || CASE
		WHEN Length([p].[ID]) = 1 THEN '0' || Cast([p].[ID] as VarChar(11))
		ELSE [p].[ID]
	END || '-' || @p_2)
FROM
	[LinqDataTypes] [p]
WHERE
	Cast(StrFTime('%Y', Date(@p_1 || CASE
		WHEN Length([p].[ID]) = 1 THEN '0' || Cast([p].[ID] as VarChar(11))
		ELSE [p].[ID]
	END || '-' || @p_2)) as int) = 2010

