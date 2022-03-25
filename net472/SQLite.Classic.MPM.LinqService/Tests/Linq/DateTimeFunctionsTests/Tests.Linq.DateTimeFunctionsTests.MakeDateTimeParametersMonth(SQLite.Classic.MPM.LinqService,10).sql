BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	Date(CASE
		WHEN 2010 + [t].[ID] IS NULL
			THEN ''
		ELSE Cast((2010 + [t].[ID]) as NVarChar(11))
	END || '-10-01')
FROM
	[LinqDataTypes] [t]

