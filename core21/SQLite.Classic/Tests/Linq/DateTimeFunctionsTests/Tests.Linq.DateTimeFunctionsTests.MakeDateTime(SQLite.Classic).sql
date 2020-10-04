BeforeExecute
-- SQLite.Classic SQLite
DECLARE @p1 NVarChar(2) -- String
SET     @p1 = '01'

SELECT
	[t].[c1]
FROM
	(
		SELECT
			Date('2010-' || CASE
				WHEN Length([p].[ID]) = 1 THEN '0' || Cast([p].[ID] as VarChar(11))
				ELSE [p].[ID]
			END || '-' || @p1) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	Cast(StrFTime('%Y', [t].[c1]) as int) = 2010

