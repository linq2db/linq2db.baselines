BeforeExecute
-- Access AccessOleDb
DECLARE @year_1 Integer -- Int32
SET     @year_1 = 2010
DECLARE @year_1 Integer -- Int32
SET     @year_1 = 2010

SELECT
	DateSerial(@year_1, [p].[ID], 1)
FROM
	[LinqDataTypes] [p]
WHERE
	DatePart('yyyy', DateSerial(@year_1, [p].[ID], 1)) = 2010

