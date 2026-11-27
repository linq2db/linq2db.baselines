-- Access.Ace.Odbc AccessODBC
SELECT
	(
		SELECT TOP 1
			[a_Metrics].[Value] IS NOT NULL
		FROM
			[RequestMetricRow] [a_Metrics]
		WHERE
			[a].[Id] = [a_Metrics].[RequestId]
	),
	(
		SELECT TOP 1
			[a_Metrics_1].[Value]
		FROM
			[RequestMetricRow] [a_Metrics_1]
		WHERE
			[a].[Id] = [a_Metrics_1].[RequestId]
	)
FROM
	[RequestWithMetrics] [a]

