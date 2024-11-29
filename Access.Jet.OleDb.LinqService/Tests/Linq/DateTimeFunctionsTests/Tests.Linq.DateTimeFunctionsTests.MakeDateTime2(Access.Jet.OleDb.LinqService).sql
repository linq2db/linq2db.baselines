BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[t].[c1]
FROM
	(
		SELECT
			CDate('2010-' + Format([p].[ID], String('0', 2)) + '-01 20:35:44') as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	DatePart('yyyy', [t].[c1]) = 2010

