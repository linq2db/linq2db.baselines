BeforeExecute
-- Sybase.Managed Sybase

SELECT
	DatePart(minute, DateAdd(minute, -8, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

