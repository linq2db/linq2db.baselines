BeforeExecute
-- Access AccessOleDb

SELECT 
	[t].[MoneyValue]
FROM
	[LinqDataTypes] [t]
WHERE
	(Iif([t].[BoolValue] = False, True, False) = False AND Iif([t].[BoolValue] = False, True, False) IS NOT NULL)

