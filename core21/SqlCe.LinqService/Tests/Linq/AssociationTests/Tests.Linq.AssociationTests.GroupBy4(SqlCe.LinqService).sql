BeforeExecute
-- SqlCe

SELECT
	[t1].[c1]
FROM
	(
		SELECT
			DatePart(year, [selectParam].[DateTimeValue]) as [c1]
		FROM
			[LinqDataTypes] [selectParam]
	) [t1]
GROUP BY
	[t1].[c1]

