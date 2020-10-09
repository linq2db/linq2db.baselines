BeforeExecute
-- Access AccessOleDb

SELECT 
	[t].[c1]
FROM
	( 
		SELECT 
			[p].[MoneyValue] * 57.295779513082323 as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	([t].[c1] IS NULL OR [t].[c1] <> 0.10000000000000001)

