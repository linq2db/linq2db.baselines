BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @p1 Bit -- Boolean
SET     @p1 = False

SELECT 
	[t].[c1]
FROM
	( 
		SELECT 
			Iif(?, Round([p].[MoneyValue], 1), Iif([p].[MoneyValue] * 10 - Int([p].[MoneyValue] * 10) = 0.5 AND Int([p].[MoneyValue] * 10) MOD 2 = 0, -Int(-([p].[MoneyValue] * 10)), Round([p].[MoneyValue] * 10, 0)) / 10) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[c1] <> 0 AND [t].[c1] <> 7

