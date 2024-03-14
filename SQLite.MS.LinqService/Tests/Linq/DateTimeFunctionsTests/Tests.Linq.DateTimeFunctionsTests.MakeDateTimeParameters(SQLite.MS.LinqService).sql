BeforeExecute
-- SQLite.MS SQLite
DECLARE @p NVarChar(5) -- String
SET     @p = '2010-'

SELECT
	[t_1].[ID]
FROM
	(
		SELECT
			Cast(StrFTime('%Y', Date(@p || printf('%02d', [t].[ID]) || '-01')) as int) as [Year_1],
			[t].[ID]
		FROM
			[LinqDataTypes] [t]
	) [t_1]
WHERE
	[t_1].[Year_1] = 2010

