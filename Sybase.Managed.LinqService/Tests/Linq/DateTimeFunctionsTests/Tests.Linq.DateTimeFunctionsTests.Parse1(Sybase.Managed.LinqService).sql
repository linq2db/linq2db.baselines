BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[d].[Date_1]
FROM
	(
		SELECT
			DatePart(day, [t].[DateTimeValue]) as [Day_1],
			CONVERT(Date, [t].[DateTimeValue]) as [Date_1]
		FROM
			[LinqDataTypes] [t]
	) [d]
WHERE
	[d].[Day_1] > 0 AND [d].[Day_1] IS NOT NULL

