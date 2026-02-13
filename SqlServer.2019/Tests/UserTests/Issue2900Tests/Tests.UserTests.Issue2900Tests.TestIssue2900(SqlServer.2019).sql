-- SqlServer.2019

SELECT
	[t1].[Value_2],
	[t1].[Value_1]
FROM
	[Request] [a]
		OUTER APPLY (
			SELECT TOP (1)
				[a_Metrics].[Value] as [Value_1],
				IIF([a_Metrics].[Value] IS NOT NULL, 1, 0) as [Value_2]
			FROM
				[Metric] [a_Metrics]
			WHERE
				[a].[Id] = [a_Metrics].[RequestId]
		) [t1]

