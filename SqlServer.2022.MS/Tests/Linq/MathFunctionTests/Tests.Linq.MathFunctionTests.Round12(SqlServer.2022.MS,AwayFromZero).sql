BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[t_1].[c1]
FROM
	(
		SELECT
			Round([t].[MoneyValue], 1) as [c1]
		FROM
			[LinqDataTypes] [t]
	) [t_1]
WHERE
	([t_1].[c1] <> 0 OR [t_1].[c1] IS NULL) AND ([t_1].[c1] <> 7 OR [t_1].[c1] IS NULL)

