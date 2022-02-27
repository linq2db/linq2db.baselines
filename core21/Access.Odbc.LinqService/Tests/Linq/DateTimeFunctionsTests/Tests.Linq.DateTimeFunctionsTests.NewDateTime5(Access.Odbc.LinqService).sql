BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[t].[c1]
FROM
	(
		SELECT
			DateSerial(DatePart('yyyy', [p].[DateTimeValue]) + 1, 10, 1) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	DatePart('m', [t].[c1]) = 10

