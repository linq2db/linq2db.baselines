BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	Sum([t1].[MoneyValue]),
	Cast(StrFTime('%Y', [t1].[c1]) as int),
	Cast(StrFTime('%m', [t1].[c1]) as int)
FROM
	(
		SELECT
			Date(CASE
				WHEN Cast(StrFTime('%Y', [selectParam].[DateTimeValue]) as int) IS NULL
					THEN ''
				ELSE Cast(Cast(StrFTime('%Y', [selectParam].[DateTimeValue]) as int) as NVarChar(11))
			END || '-' || CASE
				WHEN Length(CASE
					WHEN Cast(StrFTime('%m', [selectParam].[DateTimeValue]) as int) IS NULL
						THEN ''
					ELSE Cast(Cast(StrFTime('%m', [selectParam].[DateTimeValue]) as int) as NVarChar(11))
				END) = 1
					THEN '0' || CASE
					WHEN Cast(StrFTime('%m', [selectParam].[DateTimeValue]) as int) IS NULL
						THEN ''
					ELSE Cast(Cast(StrFTime('%m', [selectParam].[DateTimeValue]) as int) as NVarChar(11))
				END
				WHEN Cast(StrFTime('%m', [selectParam].[DateTimeValue]) as int) IS NULL
					THEN ''
				ELSE Cast(Cast(StrFTime('%m', [selectParam].[DateTimeValue]) as int) as NVarChar(11))
			END || '-01') as [Key_1],
			[selectParam].[MoneyValue],
			Date(CASE
				WHEN Cast(StrFTime('%Y', [selectParam].[DateTimeValue]) as int) IS NULL
					THEN ''
				ELSE Cast(Cast(StrFTime('%Y', [selectParam].[DateTimeValue]) as int) as NVarChar(11))
			END || '-' || CASE
				WHEN Length(CASE
					WHEN Cast(StrFTime('%m', [selectParam].[DateTimeValue]) as int) IS NULL
						THEN ''
					ELSE Cast(Cast(StrFTime('%m', [selectParam].[DateTimeValue]) as int) as NVarChar(11))
				END) = 1
					THEN '0' || CASE
					WHEN Cast(StrFTime('%m', [selectParam].[DateTimeValue]) as int) IS NULL
						THEN ''
					ELSE Cast(Cast(StrFTime('%m', [selectParam].[DateTimeValue]) as int) as NVarChar(11))
				END
				WHEN Cast(StrFTime('%m', [selectParam].[DateTimeValue]) as int) IS NULL
					THEN ''
				ELSE Cast(Cast(StrFTime('%m', [selectParam].[DateTimeValue]) as int) as NVarChar(11))
			END || '-01') as [c1]
		FROM
			[LinqDataTypes] [selectParam]
	) [t1]
GROUP BY
	[t1].[Key_1]

