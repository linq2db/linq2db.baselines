BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	[t].[c1]
FROM
	(
		SELECT
			DateSerial(2010, [p].[ID], 1) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	DatePart('yyyy', [t].[c1]) = 2010

