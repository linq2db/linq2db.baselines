﻿BeforeExecute
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
	[t1].[not_null],
	[t1].[HasValue]
FROM
	[Request] [a]
		OUTER APPLY (
			SELECT TOP (1)
				[a_Metrics].[Value] as [HasValue],
				1 as [not_null]
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

