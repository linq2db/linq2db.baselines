﻿BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	Sum([t1].[MoneyValue]),
	Cast(StrFTime('%Y', [t1].[c1]) as int),
	Cast(StrFTime('%m', [t1].[c1]) as int)
FROM
	(
		SELECT
			Date(Cast(Cast(StrFTime('%Y', [selectParam].[DateTimeValue]) as int) as VarChar(11)) || '-' || CASE
				WHEN Length(Cast(StrFTime('%m', [selectParam].[DateTimeValue]) as int)) = 1
					THEN '0' || Cast(Cast(StrFTime('%m', [selectParam].[DateTimeValue]) as int) as VarChar(11))
				ELSE Cast(StrFTime('%m', [selectParam].[DateTimeValue]) as int)
			END || '-01') as [Key_1],
			[selectParam].[MoneyValue],
			Date(Cast(Cast(StrFTime('%Y', [selectParam].[DateTimeValue]) as int) as VarChar(11)) || '-' || CASE
				WHEN Length(Cast(StrFTime('%m', [selectParam].[DateTimeValue]) as int)) = 1
					THEN '0' || Cast(Cast(StrFTime('%m', [selectParam].[DateTimeValue]) as int) as VarChar(11))
				ELSE Cast(StrFTime('%m', [selectParam].[DateTimeValue]) as int)
			END || '-01') as [c1]
		FROM
			[LinqDataTypes] [selectParam]
	) [t1]
GROUP BY
	[t1].[Key_1]

