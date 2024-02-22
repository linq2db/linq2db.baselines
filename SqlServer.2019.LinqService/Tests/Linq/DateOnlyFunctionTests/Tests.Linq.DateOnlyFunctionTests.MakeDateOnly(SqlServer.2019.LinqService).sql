BeforeExecute
-- SqlServer.2019

SELECT
	[t_1].[c1]
FROM
	(
		SELECT
			DatePart(year, Convert(Date, N'2010-' + format([t].[ID], 'd2') + N'-01')) as [Year_1],
			Convert(Date, N'2010-' + format([t].[ID], 'd2') + N'-01') as [c1]
		FROM
			[LinqDataTypes] [t]
	) [t_1]
WHERE
	[t_1].[Year_1] = 2010

