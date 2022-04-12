BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[t].[c1]
FROM
	(
		SELECT
			Convert(Date, Convert(NVarChar(11), DatePart(year, [p].[DateTimeValue])) + N'-10-1') as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	DatePart(month, [t].[c1]) = 10

