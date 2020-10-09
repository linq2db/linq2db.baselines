BeforeExecute
-- SqlServer.2014 SqlServer.2012

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

