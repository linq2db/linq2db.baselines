BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @p_1 NVarChar(2) -- String
SET     @p_1 = '01'

SELECT
	Date(Cast((2010 + [t].[ID]) as NVarChar(11)) || '-' || @p_1 || '-01')
FROM
	[LinqDataTypes] [t]

