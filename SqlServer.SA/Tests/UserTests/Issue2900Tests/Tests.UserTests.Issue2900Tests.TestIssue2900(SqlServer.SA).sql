﻿BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [Request]

BeforeExecute
-- SqlServer.SA SqlServer.2019

IF (OBJECT_ID(N'[Request]', N'U') IS NULL)
	CREATE TABLE [Request]
	(
		[Id] Int  NOT NULL IDENTITY,

		CONSTRAINT [PK_Request] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [Metric]

BeforeExecute
-- SqlServer.SA SqlServer.2019

IF (OBJECT_ID(N'[Metric]', N'U') IS NULL)
	CREATE TABLE [Metric]
	(
		[Id]        Int    NOT NULL IDENTITY,
		[RequestId] Int    NOT NULL,
		[Value]     Float      NULL,

		CONSTRAINT [PK_Metric] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[t1].[not_null],
	[t1].[Value_1]
FROM
	[Request] [a]
		OUTER APPLY (
			SELECT TOP (1)
				[a_Metrics].[Value] as [Value_1],
				1 as [not_null]
			FROM
				[Metric] [a_Metrics]
			WHERE
				[a].[Id] = [a_Metrics].[RequestId]
		) [t1]

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [Metric]

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [Request]

