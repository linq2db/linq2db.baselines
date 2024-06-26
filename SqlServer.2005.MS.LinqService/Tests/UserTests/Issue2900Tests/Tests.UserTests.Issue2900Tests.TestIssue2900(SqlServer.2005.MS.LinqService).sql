﻿BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Request]', N'U') IS NOT NULL)
	DROP TABLE [Request]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Request]', N'U') IS NULL)
	CREATE TABLE [Request]
	(
		[Id] Int  NOT NULL IDENTITY,

		CONSTRAINT [PK_Request] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Metric]', N'U') IS NOT NULL)
	DROP TABLE [Metric]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Metric]', N'U') IS NULL)
	CREATE TABLE [Metric]
	(
		[Id]        Int    NOT NULL IDENTITY,
		[RequestId] Int    NOT NULL,
		[Value]     Float      NULL,

		CONSTRAINT [PK_Metric] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t1].[not_null],
	[t1].[Value_1],
	[t1].[HasValue]
FROM
	[Request] [a]
		LEFT JOIN (
			SELECT
				CASE
					WHEN [a_Metrics].[Value] IS NOT NULL THEN 1
					ELSE 0
				END as [Value_1],
				[a_Metrics].[Value] as [HasValue],
				1 as [not_null],
				ROW_NUMBER() OVER (PARTITION BY [a_Metrics].[RequestId] ORDER BY [a_Metrics].[RequestId]) as [rn],
				[a_Metrics].[RequestId]
			FROM
				[Metric] [a_Metrics]
		) [t1] ON [a].[Id] = [t1].[RequestId] AND [t1].[rn] <= 1

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Metric]', N'U') IS NOT NULL)
	DROP TABLE [Metric]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Request]', N'U') IS NOT NULL)
	DROP TABLE [Request]

