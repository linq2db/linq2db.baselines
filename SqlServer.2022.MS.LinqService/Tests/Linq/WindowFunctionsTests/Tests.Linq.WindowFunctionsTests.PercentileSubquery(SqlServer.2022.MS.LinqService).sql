BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[t].[CategoryId],
	[t1].[c1]
FROM
	[WindowFunctionTestEntity] [t]
		OUTER APPLY (
			SELECT
				PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY [x].[DecimalValue]) OVER () as [c1]
			FROM
				[WindowFunctionTestEntity] [x]
			WHERE
				[x].[Id] > [t].[Id] AND [x].[DecimalValue] > 1
		) [t1]

