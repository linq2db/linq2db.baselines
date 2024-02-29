BeforeExecute
-- SqlServer.2017

SELECT
	[t].[c1]
FROM
	(
		SELECT
			DateAdd(month, (DatePart(year, [p].[DateTimeValue]) - 1900) * 12 + 9, 0) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	DatePart(month, [t].[c1]) = 10

