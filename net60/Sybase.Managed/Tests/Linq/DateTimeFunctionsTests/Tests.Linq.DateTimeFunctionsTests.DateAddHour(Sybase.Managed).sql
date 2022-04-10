BeforeExecute
-- Sybase.Managed Sybase

SELECT
	DatePart(hour, DateAdd(hour, 1, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

