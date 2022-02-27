BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @p1 NVarChar(2) -- String
SET     @p1 = '10'
DECLARE @p2 NVarChar(2) -- String
SET     @p2 = '01'

SELECT
	[t].[c1]
FROM
	(
		SELECT
			Date(Cast((Cast(StrFTime('%Y', [p].[DateTimeValue]) as int) + 1) as VarChar(11)) || '-' || @p1 || '-' || @p2) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	Cast(StrFTime('%m', [t].[c1]) as int) = 10

