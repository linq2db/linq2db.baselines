BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)
DECLARE @year Integer -- Int32
SET     @year = 2010
DECLARE @year_1 Integer -- Int32
SET     @year_1 = 2010

SELECT
	DateSerial(@year, [t].[ID], 1)
FROM
	[LinqDataTypes] [t]
WHERE
	DatePart('yyyy', DateSerial(@year_1, [t].[ID], 1)) = 2010

