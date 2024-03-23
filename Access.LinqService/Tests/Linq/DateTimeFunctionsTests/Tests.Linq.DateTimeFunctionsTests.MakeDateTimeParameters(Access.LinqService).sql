BeforeExecute
-- Access AccessOleDb
DECLARE @year Integer -- Int32
SET     @year = 2010

SELECT
	[t].[ID]
FROM
	[LinqDataTypes] [t]
WHERE
	DatePart('yyyy', DateSerial(@year, [t].[ID], 1)) = 2010

