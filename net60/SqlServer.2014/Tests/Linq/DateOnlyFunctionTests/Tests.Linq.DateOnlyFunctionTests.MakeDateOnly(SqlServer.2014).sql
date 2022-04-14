BeforeExecute
-- SqlServer.2014

SELECT
	[t].[c1]
FROM
	(
		SELECT
			Convert(Date, N'2010-' + format([p].[ID], 'd2') + N'-01') as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	DatePart(year, [t].[c1]) = 2010

