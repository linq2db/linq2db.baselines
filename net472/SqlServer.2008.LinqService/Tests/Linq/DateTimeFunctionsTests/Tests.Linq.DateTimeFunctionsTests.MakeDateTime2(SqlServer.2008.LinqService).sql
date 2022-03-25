BeforeExecute
-- SqlServer.2008

SELECT
	[t].[c1]
FROM
	(
		SELECT
			Convert(DateTime2, N'2010-' + CASE
				WHEN [p].[ID] IS NULL THEN N''
				ELSE Convert(NVarChar(11), [p].[ID])
			END + N'-1 20:35:44') as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	DatePart(year, [t].[c1]) = 2010

