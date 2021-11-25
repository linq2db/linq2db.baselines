BeforeExecute
-- Sybase.Managed Sybase

SELECT
	DatePart(year, [selectParam].[DateTimeValue])
FROM
	[LinqDataTypes] [selectParam]
GROUP BY
	DatePart(year, [selectParam].[DateTimeValue])

