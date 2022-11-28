BeforeExecute
-- Access AccessOleDb

SELECT
	[t].[c1]
FROM
	(
		SELECT
			CDate(Format(DatePart('yyyy', [p].[DateTimeValue]), String('0', 4)) + '-10-01 20:35:44') as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	DatePart('m', [t].[c1]) = 10

