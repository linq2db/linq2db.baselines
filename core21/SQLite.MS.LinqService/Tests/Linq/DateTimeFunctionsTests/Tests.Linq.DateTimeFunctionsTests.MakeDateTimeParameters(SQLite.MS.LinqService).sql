BeforeExecute
-- SQLite.MS SQLite
DECLARE @p1 NVarChar(5) -- String
SET     @p1 = '2010-'
DECLARE @p2 NVarChar(2) -- String
SET     @p2 = '01'

SELECT
	[t].[c1]
FROM
	(
		SELECT
			Date(@p1 || CASE
				WHEN Length([p].[ID]) = 1 THEN '0' || Cast([p].[ID] as VarChar(11))
				ELSE [p].[ID]
			END || '-' || @p2) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	Cast(StrFTime('%Y', [t].[c1]) as int) = 2010

