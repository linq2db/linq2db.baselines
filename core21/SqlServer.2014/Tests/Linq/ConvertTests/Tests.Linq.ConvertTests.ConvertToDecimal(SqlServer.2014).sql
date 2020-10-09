BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT 
	[p].[c1]
FROM
	( 
		SELECT 
			Convert(Decimal(29,10), [t].[MoneyValue]) as [c1]
		FROM
			[LinqDataTypes] [t]
	) [p]
WHERE
	[p].[c1] > 0

