-- Access.Ace.Odbc AccessODBC

SELECT
	SUM([grp_1].[MoneyValue]),
	DatePart('yyyy', [grp_1].[c1]),
	DatePart('m', [grp_1].[c1])
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

-- Access.Ace.Odbc AccessODBC

SELECT
	SUM([grp_1].[MoneyValue]),
	DatePart('yyyy', [grp_1].[c1]),
	DatePart('m', [grp_1].[c1])
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

