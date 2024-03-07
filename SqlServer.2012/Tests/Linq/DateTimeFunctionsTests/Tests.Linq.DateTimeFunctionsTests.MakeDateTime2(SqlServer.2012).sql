BeforeExecute
-- SqlServer.2012

SELECT
	[t_1].[c1]
FROM
	(
		SELECT
			DatePart(year, Convert(DateTime2, N'2010-' + format([t].[ID], 'd2') + N'-01 20:35:44')) as [Year_1],
			Convert(DateTime2, N'2010-' + format([t].[ID], 'd2') + N'-01 20:35:44') as [c1]
		FROM
			[LinqDataTypes] [t]
	) [t_1]
WHERE
	[t_1].[Year_1] = 2010

