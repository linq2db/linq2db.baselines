BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Task') IS NOT NULL)
	DROP TABLE [Task]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Task') IS NULL)
	EXECUTE('
		CREATE TABLE [Task]
		(
			[Id]         Int           NOT NULL,
			[TargetName] NVarChar(255)     NULL,

			CONSTRAINT [PK_Task] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TaskStage') IS NOT NULL)
	DROP TABLE [TaskStage]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TaskStage') IS NULL)
	EXECUTE('
		CREATE TABLE [TaskStage]
		(
			[Id]     Int NOT NULL,
			[TaskId] Int NOT NULL,
			[Actual] Bit NOT NULL,

			CONSTRAINT [PK_TaskStage] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @TargetName UniVarChar(12) -- String
SET     @TargetName = 'bda.Requests'

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
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @TargetName UniVarChar(4) -- String
SET     @TargetName = 'None'

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
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @TaskId Integer -- Int32
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
-- Sybase.Managed Sybase

SELECT
	[p].[Id],
	[p].[TargetName],
	[a_ActualStage].[Id]
FROM
	[Task] [p]
		LEFT JOIN [TaskStage] [a_ActualStage] ON [p].[Id] = [a_ActualStage].[TaskId] AND [a_ActualStage].[Actual] = 1
WHERE
	[p].[TargetName] = 'bda.Requests'

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[p].[TargetName],
	[p].[Id],
	[a_ActualStage].[Id]
FROM
	[Task] [p]
		LEFT JOIN [TaskStage] [a_ActualStage] ON [p].[Id] = [a_ActualStage].[TaskId] AND [a_ActualStage].[Actual] = 1
ORDER BY
	[p].[Id]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TaskStage') IS NOT NULL)
	DROP TABLE [TaskStage]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Task') IS NOT NULL)
	DROP TABLE [Task]

