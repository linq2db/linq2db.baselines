BeforeExecute
-- Sybase.Managed Sybase

SELECT
	DatePart(year, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]
WHERE
	DatePart(month, CAST(RIGHT('0' + CAST(DatePart(year, [t].[DateTimeValue]) AS VarChar(4)), 4) + '-10-01 20:35:44.000' AS DateTime)) = 10

