BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @p_1 NVarChar(2) -- String
SET     @p_1 = '10'
DECLARE @p_2 NVarChar(2) -- String
SET     @p_2 = '01'

SELECT
	[t].[c1]
FROM
	(
		SELECT
			Date(Cast((Cast(StrFTime('%Y', [p].[DateTimeValue]) as int) + 1) as VarChar(11)) || '-' || @p_1 || '-' || @p_2) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	Cast(StrFTime('%m', [t].[c1]) as int) = 10

