-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t1].[HasValue],
	[t1].[Value_1]
FROM
	[RequestWithMetrics] [a]
		OUTER APPLY (
			SELECT TOP 1
				[a_Metrics].[Value] as [Value_1],
				[a_Metrics].[Value] IS NOT NULL as [HasValue]
			FROM
				[RequestMetricRow] [a_Metrics]
			WHERE
				[a].[Id] = [a_Metrics].[RequestId]
		) [t1]

