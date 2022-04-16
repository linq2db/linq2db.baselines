BeforeExecute
-- SQLite.MS SQLite
DECLARE @p_1 NVarChar(5) -- String
SET     @p_1 = '2010-'

SELECT
	[t].[c1]
FROM
	(
		SELECT
			Date(@p_1 || CASE
				WHEN Length(Cast([p].[ID] as NVarChar(11))) = 1
					THEN '0' || Cast([p].[ID] as NVarChar(11))
				ELSE Cast([p].[ID] as NVarChar(11))
			END || '-01') as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	Cast(StrFTime('%Y', [t].[c1]) as int) = 2010

