BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @year Integer -- Int32
SET     @year = 2010

SELECT
	DateSerial(CVar(@year), [t].[ID], 1)
FROM
	[LinqDataTypes] [t]
WHERE
	DatePart('yyyy', DateSerial(CVar(@year), [t].[ID], 1)) = 2010

