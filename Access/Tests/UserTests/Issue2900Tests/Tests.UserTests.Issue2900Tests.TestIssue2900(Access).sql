BeforeExecute
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
			[a_Metrics].[Value]
		FROM
			[Metric] [a_Metrics]
		WHERE
			[a].[Id] = [a_Metrics].[RequestId]
	)
FROM
	[Request] [a]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Metric]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Request]

