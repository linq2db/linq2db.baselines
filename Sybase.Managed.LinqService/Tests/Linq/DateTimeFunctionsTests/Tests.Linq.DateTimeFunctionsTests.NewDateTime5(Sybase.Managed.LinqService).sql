BeforeExecute
-- Sybase.Managed Sybase

SELECT
	DatePart(year, [t].[DateTimeValue]) + 1
FROM
	[LinqDataTypes] [t]
WHERE
	DatePart(month, CAST(RIGHT('0' + CAST(DatePart(year, [t].[DateTimeValue]) + 1 AS VarChar(4)), 4) + '-10-01' AS DateTime)) = 10

