﻿BeforeExecute
-- Access AccessOleDb

DROP TABLE [Request]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [Request]
(
	[Id] Int  NOT NULL IDENTITY,

	CONSTRAINT [PK_Request] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Metric]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [Metric]
(
	[Id]        Int    NOT NULL IDENTITY,
	[RequestId] Int    NOT NULL,
	[Value]     Float      NULL,

	CONSTRAINT [PK_Metric] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access AccessOleDb

SELECT
	(
		SELECT TOP 1
			IIF([a_Metrics].[Value] IS NOT NULL, IIF([a_Metrics].[Value] IS NOT NULL, True, False), False)
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

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Metric]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Request]

