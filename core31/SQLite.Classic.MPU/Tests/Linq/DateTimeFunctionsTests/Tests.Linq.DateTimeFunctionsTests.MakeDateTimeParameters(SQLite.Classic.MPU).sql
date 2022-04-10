BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @p_1 NVarChar(5) -- String
SET     @p_1 = '2010-'
DECLARE @p_2 NVarChar(2) -- String
SET     @p_2 = '01'

SELECT
	[t].[c1]
FROM
	(
		SELECT
			Date(@p_1 || CASE
				WHEN Length(Cast([p].[ID] as NVarChar(11))) = 1
					THEN '0' || Cast([p].[ID] as NVarChar(11))
				ELSE Cast([p].[ID] as NVarChar(11))
			END || '-' || @p_2) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	Cast(StrFTime('%Y', [t].[c1]) as int) = 2010

