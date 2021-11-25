BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @p_1 NVarChar(2) -- String
SET     @p_1 = '01'

SELECT
	Sum([selectParam].[MoneyValue]),
	Cast(StrFTime('%Y', Date(Cast(Cast(StrFTime('%Y', [selectParam].[DateTimeValue]) as int) as VarChar(11)) || '-' || CASE
		WHEN Length(Cast(StrFTime('%m', [selectParam].[DateTimeValue]) as int)) = 1
			THEN '0' || Cast(Cast(StrFTime('%m', [selectParam].[DateTimeValue]) as int) as VarChar(11))
		ELSE Cast(StrFTime('%m', [selectParam].[DateTimeValue]) as int)
	END || '-' || @p_1)) as int),
	Cast(StrFTime('%m', Date(Cast(Cast(StrFTime('%Y', [selectParam].[DateTimeValue]) as int) as VarChar(11)) || '-' || CASE
		WHEN Length(Cast(StrFTime('%m', [selectParam].[DateTimeValue]) as int)) = 1
			THEN '0' || Cast(Cast(StrFTime('%m', [selectParam].[DateTimeValue]) as int) as VarChar(11))
		ELSE Cast(StrFTime('%m', [selectParam].[DateTimeValue]) as int)
	END || '-' || @p_1)) as int)
FROM
	[LinqDataTypes] [selectParam]
GROUP BY
	Date(Cast(Cast(StrFTime('%Y', [selectParam].[DateTimeValue]) as int) as VarChar(11)) || '-' || CASE
		WHEN Length(Cast(StrFTime('%m', [selectParam].[DateTimeValue]) as int)) = 1
			THEN '0' || Cast(Cast(StrFTime('%m', [selectParam].[DateTimeValue]) as int) as VarChar(11))
		ELSE Cast(StrFTime('%m', [selectParam].[DateTimeValue]) as int)
	END || '-' || @p_1)

