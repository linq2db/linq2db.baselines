BeforeExecute
-- SqlServer.2005

SELECT
	[p].[c1]
FROM
	(
		SELECT
			Convert(Bit, [t].[MoneyValue] - 4.5) as [c1]
		FROM
			[LinqDataTypes] [t]
	) [p]
WHERE
	NOT ([p].[c1] IS NOT NULL AND [p].[c1] = 1)

