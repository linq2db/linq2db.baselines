BeforeExecute
-- SQLite.Classic SQLite
DECLARE @p_1 NVarChar(2) -- String
SET     @p_1 = '01'

SELECT
	Date(printf('%04d', (2010 + [t].[ID])) || '-' || @p_1 || '-01')
FROM
	[LinqDataTypes] [t]

