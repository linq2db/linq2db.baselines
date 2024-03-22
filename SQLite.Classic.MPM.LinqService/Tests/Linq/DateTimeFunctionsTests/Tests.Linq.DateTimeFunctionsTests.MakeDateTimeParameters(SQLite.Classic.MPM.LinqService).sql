BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @p NVarChar(5) -- String
SET     @p = '2010-'

SELECT
	[t].[ID]
FROM
	[LinqDataTypes] [t]
WHERE
	Cast(StrFTime('%Y', Date(@p || printf('%02d', [t].[ID]) || '-01')) as int) = 2010

