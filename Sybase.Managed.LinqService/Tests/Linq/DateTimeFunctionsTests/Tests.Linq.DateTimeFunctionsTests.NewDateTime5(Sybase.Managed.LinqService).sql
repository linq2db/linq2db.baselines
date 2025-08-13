BeforeExecute
-- Sybase.Managed Sybase

SELECT
	CAST(RIGHT('0' + CAST(DatePart(year, [t].[DateTimeValue]) + 1 AS VarChar(4)), 4) + '-10-01' AS DateTime)
FROM
	[LinqDataTypes] [t]

