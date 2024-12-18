BeforeExecute
-- SqlCe

SELECT
	[d].[Day_2] as [Day_1]
FROM
	(
		SELECT
			DatePart(day, CAST(CAST(DatePart(year, [t].[DateTimeValue]) AS NVarChar(11)) + '-02-24 00:00:00' AS DateTime)) as [Day_1],
			CAST(CAST(DatePart(year, [t].[DateTimeValue]) AS NVarChar(11)) + '-02-24 00:00:00' AS DateTime) as [Day_2]
		FROM
			[LinqDataTypes] [t]
	) [d]
WHERE
	[d].[Day_1] > 0 AND [d].[Day_1] IS NOT NULL

