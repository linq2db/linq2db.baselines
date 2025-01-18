BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	(
		SELECT TOP 1
			[a_Metrics].[Value] IS NOT NULL
		FROM
			[Metric] [a_Metrics]
		WHERE
			[a].[Id] = [a_Metrics].[RequestId]
	),
	(
		SELECT TOP 1
			[a_Metrics_1].[Value]
		FROM
			[Metric] [a_Metrics_1]
		WHERE
			[a].[Id] = [a_Metrics_1].[RequestId]
	)
FROM
	[Request] [a]

