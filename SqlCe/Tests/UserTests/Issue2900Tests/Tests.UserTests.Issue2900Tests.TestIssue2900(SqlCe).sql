BeforeExecute
-- SqlCe

DROP TABLE [Request]

BeforeExecute
-- SqlCe

CREATE TABLE [Request]
(
	[Id] Int  NOT NULL IDENTITY,

	CONSTRAINT [PK_Request] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

DROP TABLE [Metric]

BeforeExecute
-- SqlCe

CREATE TABLE [Metric]
(
	[Id]        Int    NOT NULL IDENTITY,
	[RequestId] Int    NOT NULL,
	[Value]     Float      NULL,

	CONSTRAINT [PK_Metric] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

SELECT
	[t1].[cond_1] as [cond],
	[t1].[cond] as [cond_1]
FROM
	[Request] [a]
		OUTER APPLY (
			SELECT TOP (1)
				[a_Metrics].[Value] as [cond],
				CASE
					WHEN [a_Metrics].[Value] IS NOT NULL THEN 1
					ELSE 0
				END as [cond_1]
			FROM
				[Metric] [a_Metrics]
			WHERE
				[a].[Id] = [a_Metrics].[RequestId]
		) [t1]

BeforeExecute
-- SqlCe

DROP TABLE [Metric]

BeforeExecute
-- SqlCe

DROP TABLE [Request]

