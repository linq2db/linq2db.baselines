BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

SELECT
	SUM([grp_1].[MoneyValue]),
	DatePart('yyyy', [grp_1].[Date_1]),
	DatePart('m', [grp_1].[Date_1])
FROM
	(
		SELECT
			DateSerial(DatePart('yyyy', [grp].[DateTimeValue]), DatePart('m', [grp].[DateTimeValue]), 1) as [Date_1],
			[grp].[MoneyValue]
		FROM
			[LinqDataTypes] [grp]
	) [grp_1]
GROUP BY
	[grp_1].[Date_1]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

SELECT
	SUM([grp_1].[MoneyValue]),
	DatePart('yyyy', [grp_1].[Date_1]),
	DatePart('m', [grp_1].[Date_1])
FROM
	(
		SELECT
			DateSerial(DatePart('yyyy', [grp].[DateTimeValue]), DatePart('m', [grp].[DateTimeValue]), 1) as [Date_1],
			[grp].[MoneyValue]
		FROM
			[LinqDataTypes] [grp]
	) [grp_1]
GROUP BY
	[grp_1].[Date_1]

