BeforeExecute
-- SqlServer.2016

SELECT
	[t].[c1]
FROM
	(
		SELECT
			Convert(DateTime2, N'2010-' + IIF([p].[ID] IS NULL, N'', Convert(NVarChar(11), [p].[ID])) + N'-1 20:35:44') as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	DatePart(year, [t].[c1]) = 2010

