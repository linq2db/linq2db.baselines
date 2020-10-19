BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @p1 NVarChar(2) -- String
SET     @p1 = '01'
DECLARE @p2 NVarChar(2) -- String
SET     @p2 = '01'

SELECT
	Date(Cast((2010 + [t].[ID]) as VarChar(11)) || '-' || @p1 || '-' || @p2)
FROM
	[LinqDataTypes] [t]

