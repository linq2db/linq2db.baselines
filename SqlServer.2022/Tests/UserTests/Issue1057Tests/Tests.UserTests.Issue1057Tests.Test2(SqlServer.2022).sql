﻿BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [Task]

BeforeExecute
-- SqlServer.2022

IF (OBJECT_ID(N'[Task]', N'U') IS NULL)
	CREATE TABLE [Task]
	(
		[Id]         Int            NOT NULL,
		[TargetName] NVarChar(4000)     NULL,

		CONSTRAINT [PK_Task] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [TaskStage]

BeforeExecute
-- SqlServer.2022

IF (OBJECT_ID(N'[TaskStage]', N'U') IS NULL)
	CREATE TABLE [TaskStage]
	(
		[Id]     Int NOT NULL,
		[TaskId] Int NOT NULL,
		[Actual] Bit NOT NULL,

		CONSTRAINT [PK_TaskStage] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @TargetName NVarChar(4000) -- String
SET     @TargetName = N'bda.Requests'

INSERT INTO [Task]
(
	[Id],
	[TargetName]
)
VALUES
(
	@Id,
	@TargetName
)

BeforeExecute
-- SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @TargetName NVarChar(4000) -- String
SET     @TargetName = N'None'

INSERT INTO [Task]
(
	[Id],
	[TargetName]
)
VALUES
(
	@Id,
	@TargetName
)

BeforeExecute
-- SqlServer.2022
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
-- SqlServer.2022

SELECT
	[p].[Id],
	[p].[TargetName],
	[a_ActualStage].[Id]
FROM
	[Task] [p]
		LEFT JOIN [TaskStage] [a_ActualStage] ON [p].[Id] = [a_ActualStage].[TaskId] AND [a_ActualStage].[Actual] = 1 AND [a_ActualStage].[Actual] IS NOT NULL
WHERE
	[p].[TargetName] = N'bda.Requests'

BeforeExecute
-- SqlServer.2022

SELECT
	[p].[TargetName],
	[p].[Id],
	[a_ActualStage].[Id]
FROM
	[Task] [p]
		LEFT JOIN [TaskStage] [a_ActualStage] ON [p].[Id] = [a_ActualStage].[TaskId] AND [a_ActualStage].[Actual] = 1 AND [a_ActualStage].[Actual] IS NOT NULL
ORDER BY
	[p].[Id]

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [TaskStage]

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [Task]

