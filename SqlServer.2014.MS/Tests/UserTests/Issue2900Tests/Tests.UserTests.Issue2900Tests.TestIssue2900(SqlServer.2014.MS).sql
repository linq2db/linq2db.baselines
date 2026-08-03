-- SqlServer.2014.MS SqlServer.2014
SELECT
	[t1].[Value_1],
	[t1].[HasValue]
FROM
	[Request] [a]
		OUTER APPLY (
			SELECT TOP (1)
				[a_Metrics].[Value] as [HasValue],
				IIF([a_Metrics].[Value] IS NOT NULL, 1, 0) as [Value_1]
			FROM
				[Metric] [a_Metrics]
			WHERE
				[a].[Id] = [a_Metrics].[RequestId]
		) [t1]

