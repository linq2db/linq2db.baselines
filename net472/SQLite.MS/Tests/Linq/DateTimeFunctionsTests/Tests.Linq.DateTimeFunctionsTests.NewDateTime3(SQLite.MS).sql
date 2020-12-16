BeforeExecute
-- SQLite.MS SQLite
DECLARE @p_1 NVarChar(2) -- String
SET     @p_1 = '10'
DECLARE @p_2 NVarChar(2) -- String
SET     @p_2 = '01'
DECLARE @p_3 NVarChar(2) -- String
SET     @p_3 = '20'
DECLARE @p_4 NVarChar(2) -- String
SET     @p_4 = '35'
DECLARE @p_5 NVarChar(2) -- String
SET     @p_5 = '44'

SELECT
	[t].[c1]
FROM
	(
		SELECT
			DateTime(Cast(Cast(StrFTime('%Y', [p].[DateTimeValue]) as int) as VarChar(11)) || '-' || @p_1 || '-' || @p_2 || ' ' || @p_3 || ':' || @p_4 || ':' || @p_5) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	Cast(StrFTime('%m', [t].[c1]) as int) = 10

