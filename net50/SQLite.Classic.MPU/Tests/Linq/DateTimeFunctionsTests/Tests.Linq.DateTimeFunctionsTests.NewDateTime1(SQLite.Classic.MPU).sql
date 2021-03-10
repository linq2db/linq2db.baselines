BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @p_1 NVarChar(2) -- String
SET     @p_1 = '10'
DECLARE @p_2 NVarChar(2) -- String
SET     @p_2 = '01'

SELECT
	Date(Cast(Cast(StrFTime('%Y', [p].[DateTimeValue]) as int) as VarChar(11)) || '-' || @p_1 || '-' || @p_2)
FROM
	[LinqDataTypes] [p]
WHERE
	Cast(StrFTime('%m', Date(Cast(Cast(StrFTime('%Y', [p].[DateTimeValue]) as int) as VarChar(11)) || '-' || @p_1 || '-' || @p_2)) as int) = 10

