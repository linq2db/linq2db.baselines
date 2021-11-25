BeforeExecute
-- SQLite.Classic SQLite
DECLARE @p_1 NVarChar(2) -- String
SET     @p_1 = '01'

SELECT
	Date('2010-' || CASE
		WHEN Length([p].[ID]) = 1 THEN '0' || Cast([p].[ID] as VarChar(11))
		ELSE [p].[ID]
	END || '-' || @p_1)
FROM
	[LinqDataTypes] [p]
WHERE
	Cast(StrFTime('%Y', Date('2010-' || CASE
		WHEN Length([p].[ID]) = 1 THEN '0' || Cast([p].[ID] as VarChar(11))
		ELSE [p].[ID]
	END || '-' || @p_1)) as int) = 2010

