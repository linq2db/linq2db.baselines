BeforeExecute
-- Access AccessOleDb

SELECT
	[t].[ID]
FROM
	[LinqDataTypes] [t]
WHERE
	DatePart('yyyy', DateSerial(2010, [t].[ID], 1)) = 2010

