BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[p].[Day_2]
FROM
	(
		SELECT
			DatePart(day, CAST(CAST(DatePart(year, [t].[DateTimeValue]) AS VarChar(11)) + '-01-01 00:00:00' AS DateTime)) as [Day_1],
			CAST(CAST(DatePart(year, [t].[DateTimeValue]) AS VarChar(11)) + '-01-01 00:00:00' AS DateTime) as [Day_2]
		FROM
			[LinqDataTypes] [t]
	) [p]
WHERE
	[p].[Day_1] > 0 AND [p].[Day_1] IS NOT NULL

