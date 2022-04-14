BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	[t].[c1]
FROM
	(
		SELECT
			Convert(Date, Convert(NVarChar(11), DatePart(year, [p].[DateTimeValue])) + N'-10-01') as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	DatePart(month, [t].[c1]) = 10

