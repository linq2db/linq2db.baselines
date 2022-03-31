BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @p_1 NVarChar(2) -- String
SET     @p_1 = '01'
DECLARE @p_2 NVarChar(2) -- String
SET     @p_2 = '01'

SELECT
	Date(Cast((2010 + [t].[ID]) as NVarChar(4000)) || '-' || @p_1 || '-' || @p_2)
FROM
	[LinqDataTypes] [t]

