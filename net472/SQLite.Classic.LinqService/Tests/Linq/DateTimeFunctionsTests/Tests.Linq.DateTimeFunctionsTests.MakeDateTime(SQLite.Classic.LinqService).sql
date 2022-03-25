BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t].[c1]
FROM
	(
		SELECT
			Date('2010-' || CASE
				WHEN Length(CASE
					WHEN [p].[ID] IS NULL THEN ''
					ELSE Cast([p].[ID] as NVarChar(11))
				END) = 1
					THEN '0' || CASE
					WHEN [p].[ID] IS NULL THEN ''
					ELSE Cast([p].[ID] as NVarChar(11))
				END
				WHEN [p].[ID] IS NULL THEN ''
				ELSE Cast([p].[ID] as NVarChar(11))
			END || '-01') as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	Cast(StrFTime('%Y', [t].[c1]) as int) = 2010

