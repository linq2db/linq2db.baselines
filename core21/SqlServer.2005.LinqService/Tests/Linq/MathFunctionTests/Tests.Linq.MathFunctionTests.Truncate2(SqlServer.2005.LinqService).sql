BeforeExecute
-- SqlServer.2005

SELECT 
	[t].[c1]
FROM
	( 
		SELECT 
			Round(Convert(Float, -[p].[MoneyValue]), 0, 1) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	([t].[c1] IS NULL OR [t].[c1] <> 0.10000000000000001)

