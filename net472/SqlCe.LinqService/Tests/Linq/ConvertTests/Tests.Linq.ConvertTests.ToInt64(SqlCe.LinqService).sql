BeforeExecute
-- SqlCe

SELECT 
	[p].[c1]
FROM
	( 
		SELECT 
			Convert(BigInt, [t].[MoneyValue]) as [c1]
		FROM
			[LinqDataTypes] [t]
	) [p]
WHERE
	[p].[c1] > 0

