BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @p_1 NVarChar(2) -- String
SET     @p_1 = '01'

SELECT
	Sum([t1].[MoneyValue]),
	Cast(StrFTime('%Y', [t1].[c1]) as int),
	Cast(StrFTime('%m', [t1].[c1]) as int)
FROM
	(
		SELECT
			Date(Cast(Cast(StrFTime('%Y', [selectParam].[DateTimeValue]) as int) as NVarChar(4000)) || '-' || CASE
				WHEN Length(Cast(Cast(StrFTime('%m', [selectParam].[DateTimeValue]) as int) as NVarChar(4000))) = 1
					THEN '0' || Cast(Cast(StrFTime('%m', [selectParam].[DateTimeValue]) as int) as NVarChar(4000))
				ELSE Cast(Cast(StrFTime('%m', [selectParam].[DateTimeValue]) as int) as NVarChar(4000))
			END || '-' || @p_1) as [Key_1],
			[selectParam].[MoneyValue],
			Date(Cast(Cast(StrFTime('%Y', [selectParam].[DateTimeValue]) as int) as NVarChar(4000)) || '-' || CASE
				WHEN Length(Cast(Cast(StrFTime('%m', [selectParam].[DateTimeValue]) as int) as NVarChar(4000))) = 1
					THEN '0' || Cast(Cast(StrFTime('%m', [selectParam].[DateTimeValue]) as int) as NVarChar(4000))
				ELSE Cast(Cast(StrFTime('%m', [selectParam].[DateTimeValue]) as int) as NVarChar(4000))
			END || '-' || @p_1) as [c1]
		FROM
			[LinqDataTypes] [selectParam]
	) [t1]
GROUP BY
	[t1].[Key_1]

