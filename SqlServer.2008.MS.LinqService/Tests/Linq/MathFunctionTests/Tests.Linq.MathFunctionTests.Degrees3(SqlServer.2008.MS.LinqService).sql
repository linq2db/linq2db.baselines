BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t_1].[c1]
FROM
	(
		SELECT
			Degrees(Convert(Int, [t].[MoneyValue])) as [c1]
		FROM
			[LinqDataTypes] [t]
	) [t_1]
WHERE
	Convert(Float, [t_1].[c1]) <> 0.10000000000000001

