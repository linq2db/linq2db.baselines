BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t].[c1]
FROM
	(
		SELECT
			Convert(DateTime2, REPLICATE('0', CASE WHEN LEN(CAST(DatePart(year, [p].[DateTimeValue]) as NVARCHAR)) > 4 THEN 0 ELSE (4 - LEN(CAST(DatePart(year, [p].[DateTimeValue]) as NVARCHAR))) END) + CAST(DatePart(year, [p].[DateTimeValue]) as NVARCHAR) + N'-10-01 20:35:44') as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	DatePart(month, [t].[c1]) = 10

