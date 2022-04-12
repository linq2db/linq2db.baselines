BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[t].[c1]
FROM
	(
		SELECT
			Convert(Date, N'2010-' + Convert(NVarChar(11), [p].[ID]) + N'-1') as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	DatePart(year, [t].[c1]) = 2010

