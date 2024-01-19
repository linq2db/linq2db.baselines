BeforeExecute
-- SqlServer.2008

SELECT
	[t].[c1]
FROM
	(
		SELECT
			Convert(Date, REPLICATE('0', CASE WHEN LEN(CAST(DatePart(year, [p].[DateTimeValue]) as NVARCHAR)) > 4 THEN 0 ELSE (4 - LEN(CAST(DatePart(year, [p].[DateTimeValue]) as NVARCHAR))) END) + CAST(DatePart(year, [p].[DateTimeValue]) as NVARCHAR) + N'-10-01') as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	DatePart(month, [t].[c1]) = 10

