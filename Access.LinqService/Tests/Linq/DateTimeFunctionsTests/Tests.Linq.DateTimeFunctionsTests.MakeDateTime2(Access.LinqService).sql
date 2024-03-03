BeforeExecute
-- Access AccessOleDb

SELECT
	[t_1].[c1]
FROM
	(
		SELECT
			DatePart('yyyy', CDate('2010-' + Format([t].[ID], String('0', 2)) + '-01 20:35:44')) as [Year_1],
			CDate('2010-' + Format([t].[ID], String('0', 2)) + '-01 20:35:44') as [c1]
		FROM
			[LinqDataTypes] [t]
	) [t_1]
WHERE
	([t_1].[Year_1] = 2010)

