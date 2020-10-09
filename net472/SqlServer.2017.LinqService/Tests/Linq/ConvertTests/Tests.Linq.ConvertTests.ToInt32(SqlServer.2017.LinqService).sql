BeforeExecute
-- SqlServer.2017

SELECT 
	[p].[c1]
FROM
	( 
		SELECT 
			Convert(Int, [t].[MoneyValue]) as [c1]
		FROM
			[LinqDataTypes] [t]
	) [p]
WHERE
	[p].[c1] > 0

