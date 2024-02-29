BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[d].[c1]
FROM
	(
		SELECT
			[t].[DateTimeValue] as [c1]
		FROM
			[LinqDataTypes] [t]
	) [d]
WHERE
	DatePart('d', [d].[c1]) > 0

