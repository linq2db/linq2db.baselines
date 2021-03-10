BeforeExecute
-- SqlServer.2016 SqlServer.2012

SELECT
	Convert(NVarChar(3), Convert(TinyInt, [t].[ID]))
FROM
	[LinqDataTypes] [t]
WHERE
	Len(Convert(NVarChar(3), Convert(TinyInt, [t].[ID]))) > 0

