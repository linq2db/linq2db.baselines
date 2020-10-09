BeforeExecute
-- SqlServer.2014 SqlServer.2012
DECLARE @p1 Bit -- Boolean
SET     @p1 = 0

SELECT 
	[t].[c1]
FROM
	( 
		SELECT 
			IIF(@p1 = 1, IIF([p].[MoneyValue] * 2 = Round([p].[MoneyValue] * 2, 1) AND [p].[MoneyValue] <> Round([p].[MoneyValue], 1), Round([p].[MoneyValue] / 2, 1) * 2, Round([p].[MoneyValue], 1)), Round([p].[MoneyValue], 1)) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[c1] <> 0 AND [t].[c1] <> 7

