BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t].[c1]
FROM
	(
		SELECT
			Floor(Degrees([p].[MoneyValue])) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[c1] <> 0.1

