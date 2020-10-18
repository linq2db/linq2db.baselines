BeforeExecute
-- Access AccessOleDb

SELECT
	[p].[MoneyValue]
FROM
	(
		SELECT
			Iif([t].[BoolValue] = False, True, False) as [b],
			[t].[MoneyValue]
		FROM
			[LinqDataTypes] [t]
	) [p]
WHERE
	([p].[b] = False AND [p].[b] IS NOT NULL)

