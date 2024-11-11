BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	SUM([grp_1].[MoneyValue]),
	[grp_1].[Year_1],
	[grp_1].[Month_1]
FROM
	(
		SELECT
			DateSerial(DatePart('yyyy', [grp].[DateTimeValue]), DatePart('m', [grp].[DateTimeValue]), 1) as [Date_1],
			[grp].[MoneyValue],
			DatePart('yyyy', [grp_1].[Date_1]) as [Year_1],
			DatePart('m', [grp_1].[Date_1]) as [Month_1]
		FROM
			[LinqDataTypes] [grp]
	) [grp_1]
GROUP BY
	[grp_1].[Date_1]

