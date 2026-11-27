-- SqlServer.2005
SELECT
	[t1].[HasValue],
	[t1].[Value_1]
FROM
	[RequestWithMetrics] [a]
		OUTER APPLY (
			SELECT TOP (1)
				[a_Metrics].[Value] as [Value_1],
				CASE
					WHEN [a_Metrics].[Value] IS NOT NULL THEN 1
					ELSE 0
				END as [HasValue]
			FROM
				[RequestMetricRow] [a_Metrics]
			WHERE
				[a].[Id] = [a_Metrics].[RequestId]
		) [t1]

