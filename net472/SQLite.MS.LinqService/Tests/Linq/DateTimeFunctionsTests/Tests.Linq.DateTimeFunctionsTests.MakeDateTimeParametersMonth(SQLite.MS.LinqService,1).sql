BeforeExecute
-- SQLite.MS SQLite

SELECT
	Date(CASE
		WHEN 2010 + [t].[ID] IS NULL
			THEN ''
		ELSE Cast((2010 + [t].[ID]) as NVarChar(11))
	END || '-01-01')
FROM
	[LinqDataTypes] [t]

