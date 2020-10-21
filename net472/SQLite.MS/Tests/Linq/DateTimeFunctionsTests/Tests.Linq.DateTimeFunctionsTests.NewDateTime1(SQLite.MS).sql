BeforeExecute
-- SQLite.MS SQLite
DECLARE @p1 NVarChar(2) -- String
SET     @p1 = '10'
DECLARE @p2 NVarChar(2) -- String
SET     @p2 = '01'

SELECT
	Date(Cast(Cast(StrFTime('%Y', [p].[DateTimeValue]) as int) as VarChar(11)) || '-' || @p1 || '-' || @p2)
FROM
	[LinqDataTypes] [p]
WHERE
	Cast(StrFTime('%m', Date(Cast(Cast(StrFTime('%Y', [p].[DateTimeValue]) as int) as VarChar(11)) || '-' || @p1 || '-' || @p2)) as int) = 10

