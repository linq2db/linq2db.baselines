BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @year Integer -- Int32
SET     @year = 2010

SELECT
	[t].[c1]
FROM
	(
		SELECT
			DateSerial(CVar(@year), [p].[ID], 1) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	DatePart('yyyy', [t].[c1]) = 2010

