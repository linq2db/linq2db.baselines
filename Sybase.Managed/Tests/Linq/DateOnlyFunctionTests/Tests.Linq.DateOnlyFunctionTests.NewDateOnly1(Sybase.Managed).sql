-- Sybase.Managed Sybase

SELECT
	CAST(RIGHT('0' + CAST(DatePart(year, [t].[DateTimeValue]) AS VarChar(4)), 4) + '-10-01' AS Date)
FROM
	[LinqDataTypes] [t]

