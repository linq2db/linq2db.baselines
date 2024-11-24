BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	SUM([grp_1].[MoneyValue]),
	[grp_1].[Year_1],
	[grp_1].[Month_1]
FROM
	(
		SELECT
			DatePart('m', [grp].[DateTimeValue]) as [Month_1],
			DatePart('yyyy', [grp].[DateTimeValue]) as [Year_1],
			[grp].[MoneyValue]
		FROM
			[LinqDataTypes] [grp]
	) [grp_1]
GROUP BY
	[grp_1].[Month_1],
	[grp_1].[Year_1]

