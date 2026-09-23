-- Access.Jet.OleDb AccessOleDb
SELECT
	SUM([grp_1].[MoneyValue]),
	DatePart('yyyy', IIF([grp_1].[c1] IS NULL, #0100-01-01#, [grp_1].[c1])),
	DatePart('m', IIF([grp_1].[c1] IS NULL, #0100-01-01#, [grp_1].[c1]))
FROM
	(
		SELECT
			DateSerial(DatePart('yyyy', [grp].[DateTimeValue]), DatePart('m', [grp].[DateTimeValue]), 1) as [c1],
			[grp].[MoneyValue]
		FROM
			[LinqDataTypes] [grp]
	) [grp_1]
GROUP BY
	[grp_1].[c1]

-- Access.Jet.OleDb AccessOleDb
SELECT
	SUM([grp_1].[MoneyValue]),
	DatePart('yyyy', IIF([grp_1].[c1] IS NULL, #0100-01-01#, [grp_1].[c1])),
	DatePart('m', IIF([grp_1].[c1] IS NULL, #0100-01-01#, [grp_1].[c1]))
FROM
	(
		SELECT
			DateSerial(DatePart('yyyy', [grp].[DateTimeValue]), DatePart('m', [grp].[DateTimeValue]), 1) as [c1],
			[grp].[MoneyValue]
		FROM
			[LinqDataTypes] [grp]
	) [grp_1]
GROUP BY
	[grp_1].[c1]

