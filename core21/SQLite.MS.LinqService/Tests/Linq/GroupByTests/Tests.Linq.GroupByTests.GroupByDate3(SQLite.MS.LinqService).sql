BeforeExecute
-- SQLite.MS SQLite
DECLARE @p2 NVarChar(2) -- String
SET     @p2 = '01'
DECLARE @p1 NVarChar(2) -- String
SET     @p1 = '01'

SELECT
	Sum([t1].[MoneyValue]),
	Cast(StrFTime('%Y', [t1].[c2]) as int),
	Cast(StrFTime('%m', [t1].[c2]) as int)
FROM
	(
		SELECT
			Date(Cast(Cast(StrFTime('%Y', [selectParam].[DateTimeValue]) as int) as VarChar(11)) || '-' || CASE
				WHEN Length(Cast(StrFTime('%m', [selectParam].[DateTimeValue]) as int)) = 1
					THEN '0' || Cast(Cast(StrFTime('%m', [selectParam].[DateTimeValue]) as int) as VarChar(11))
				ELSE Cast(StrFTime('%m', [selectParam].[DateTimeValue]) as int)
			END || '-' || @p2) as [c1],
			[selectParam].[MoneyValue],
			Date(Cast(Cast(StrFTime('%Y', [selectParam].[DateTimeValue]) as int) as VarChar(11)) || '-' || CASE
				WHEN Length(Cast(StrFTime('%m', [selectParam].[DateTimeValue]) as int)) = 1
					THEN '0' || Cast(Cast(StrFTime('%m', [selectParam].[DateTimeValue]) as int) as VarChar(11))
				ELSE Cast(StrFTime('%m', [selectParam].[DateTimeValue]) as int)
			END || '-' || @p1) as [c2]
		FROM
			[LinqDataTypes] [selectParam]
	) [t1]
GROUP BY
	[t1].[c1]

