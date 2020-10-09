BeforeExecute
-- SqlCe

SELECT 
	[p].[c1]
FROM
	( 
		SELECT 
			Convert(NVarChar(31), [t].[MoneyValue]) as [c1]
		FROM
			[LinqDataTypes] [t]
	) [p]
WHERE
	Len([p].[c1]) > 0

