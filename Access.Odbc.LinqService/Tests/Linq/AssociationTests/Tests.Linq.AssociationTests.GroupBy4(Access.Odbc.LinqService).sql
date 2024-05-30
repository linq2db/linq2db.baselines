BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[g_2].[Year_1]
FROM
	(
		SELECT
			DatePart('yyyy', [g_1].[DateTimeValue]) as [Year_1]
		FROM
			[LinqDataTypes] [g_1]
	) [g_2]
GROUP BY
	[g_2].[Year_1]

