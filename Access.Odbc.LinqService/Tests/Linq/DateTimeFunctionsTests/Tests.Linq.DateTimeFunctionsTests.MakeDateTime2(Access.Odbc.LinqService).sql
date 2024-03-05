BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[t_1].[ID]
FROM
	(
		SELECT
			DatePart('yyyy', CDate('2010-' + Format([t].[ID], String('0', 2)) + '-01 20:35:44')) as [Year_1],
			[t].[ID]
		FROM
			[LinqDataTypes] [t]
	) [t_1]
WHERE
	[t_1].[Year_1] = 2010

