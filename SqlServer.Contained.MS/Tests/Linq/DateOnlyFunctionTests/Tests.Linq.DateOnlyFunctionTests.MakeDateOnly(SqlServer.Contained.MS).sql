BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[t_1].[ID]
FROM
	(
		SELECT
			DatePart(year, Convert(Date, N'2010-' + format([t].[ID], 'd2') + N'-01')) as [Year_1],
			[t].[ID]
		FROM
			[LinqDataTypes] [t]
	) [t_1]
WHERE
	[t_1].[Year_1] = 2010

