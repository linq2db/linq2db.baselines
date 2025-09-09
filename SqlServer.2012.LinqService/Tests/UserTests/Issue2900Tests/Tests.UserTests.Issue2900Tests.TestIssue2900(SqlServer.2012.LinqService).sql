BeforeExecute
-- SqlServer.2012 (asynchronously)

SELECT
	[t1].[cond_1],
	[t1].[cond]
FROM
	[Request] [a]
		OUTER APPLY (
			SELECT TOP (1)
				[a_Metrics].[Value] as [cond],
				IIF([a_Metrics].[Value] IS NOT NULL, 1, 0) as [cond_1]
			FROM
				[Metric] [a_Metrics]
			WHERE
				[a].[Id] = [a_Metrics].[RequestId]
		) [t1]

