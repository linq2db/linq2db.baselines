﻿BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Task]', N'U') IS NOT NULL)
	DROP TABLE [Task]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Task]', N'U') IS NULL)
	CREATE TABLE [Task]
	(
		[Id] Int NOT NULL,

		CONSTRAINT [PK_Task] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[TaskStage]', N'U') IS NOT NULL)
	DROP TABLE [TaskStage]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[TaskStage]', N'U') IS NULL)
	CREATE TABLE [TaskStage]
	(
		[Id]     Int NOT NULL,
		[TaskId] Int NOT NULL,
		[Actual] Bit NOT NULL,

		CONSTRAINT [PK_TaskStage] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 1

INSERT INTO [Task]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 2

INSERT INTO [Task]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @TaskId Int -- Int32
SET     @TaskId = 1
DECLARE @Actual Bit -- Boolean
SET     @Actual = 1

INSERT INTO [TaskStage]
(
	[Id],
	[TaskId],
	[Actual]
)
VALUES
(
	@Id,
	@TaskId,
	@Actual
)

BeforeExecute
-- SqlServer.2005

SELECT
	[it_1].[Name],
	[it_1].[Value_1],
	SUM(CASE
		WHEN [it_1].[Id] IS NULL THEN NULL
		ELSE [it_1].[Id]
	END)
FROM
	(
		SELECT
			N'Id' as [Name],
			[it].[Id] as [Value_1],
			[a_ActualStage].[Id]
		FROM
			[Task] [it]
				LEFT JOIN [TaskStage] [a_ActualStage] ON [it].[Id] = [a_ActualStage].[TaskId] AND [a_ActualStage].[Actual] = 1
	) [it_1]
GROUP BY
	[it_1].[Name],
	[it_1].[Value_1]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[TaskStage]', N'U') IS NOT NULL)
	DROP TABLE [TaskStage]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Task]', N'U') IS NOT NULL)
	DROP TABLE [Task]

