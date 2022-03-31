BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t].[c1]
FROM
	(
		SELECT
			DateTime('2010-' || CASE
				WHEN Length(Cast([p].[ID] as NVarChar(4000))) = 1
					THEN '0' || Cast([p].[ID] as NVarChar(4000))
				ELSE Cast([p].[ID] as NVarChar(4000))
			END || '-01 20:35:44') as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	Cast(StrFTime('%Y', [t].[c1]) as int) = 2010

