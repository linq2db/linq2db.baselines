BeforeExecute
-- SQLite.MS SQLite
DECLARE @p_1 NVarChar(2) -- String
SET     @p_1 = '01'

SELECT
	[t].[c1]
FROM
	(
		SELECT
			Date('2010-' || CASE
				WHEN Length(Cast([p].[ID] as NVarChar(11))) = 1
					THEN '0' || Cast([p].[ID] as NVarChar(11))
				ELSE Cast([p].[ID] as NVarChar(11))
			END || '-' || @p_1) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	Cast(StrFTime('%Y', [t].[c1]) as int) = 2010

