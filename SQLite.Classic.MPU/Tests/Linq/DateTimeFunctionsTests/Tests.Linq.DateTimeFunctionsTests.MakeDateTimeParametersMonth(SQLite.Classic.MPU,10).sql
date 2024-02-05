BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @p NVarChar(2) -- String
SET     @p = '10'

SELECT
	Date(printf('%04d', (2010 + [t].[ID])) || '-' || @p || '-01')
FROM
	[LinqDataTypes] [t]

