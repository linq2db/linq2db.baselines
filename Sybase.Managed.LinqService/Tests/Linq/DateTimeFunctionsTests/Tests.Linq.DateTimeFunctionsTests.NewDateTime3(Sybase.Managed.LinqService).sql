BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	CAST(RIGHT('0' + CAST(DatePart(year, [t].[DateTimeValue]) AS VarChar(4)), 4) + '-10-01 20:35:44.000' AS DateTime)
FROM
	[LinqDataTypes] [t]

