BeforeExecute
-- SqlServer.2012

SELECT
	[t].[c1]
FROM
	(
		SELECT
			DateAdd(month, (DatePart(year, [p].[DateTimeValue]) - 1899) * 12 + 9, 0) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	DatePart(month, [t].[c1]) = 10

