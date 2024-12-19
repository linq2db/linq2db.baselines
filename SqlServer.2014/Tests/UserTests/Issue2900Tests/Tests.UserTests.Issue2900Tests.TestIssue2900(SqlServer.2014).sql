BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[Request]', N'U') IS NOT NULL)
	DROP TABLE [Request]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[Request]', N'U') IS NULL)
	CREATE TABLE [Request]
	(
		[Id] Int  NOT NULL IDENTITY,

		CONSTRAINT [PK_Request] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[Metric]', N'U') IS NOT NULL)
	DROP TABLE [Metric]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[Metric]', N'U') IS NULL)
	CREATE TABLE [Metric]
	(
		[Id]        Int    NOT NULL IDENTITY,
		[RequestId] Int    NOT NULL,
		[Value]     Float      NULL,

		CONSTRAINT [PK_Metric] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2014

SELECT
	[t1].[cond_1],
	[t1].[cond]
FROM
	[Request] [a]
		OUTER APPLY (
			SELECT TOP (1)
				[a_Metrics].[Value] as [cond],
				IIF([a_Metrics].[Value] IS NOT NULL, 1, 0) as [cond_1]
			FROM
				[Metric] [a_Metrics]
			WHERE
				[a].[Id] = [a_Metrics].[RequestId]
		) [t1]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[Metric]', N'U') IS NOT NULL)
	DROP TABLE [Metric]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[Request]', N'U') IS NOT NULL)
	DROP TABLE [Request]

