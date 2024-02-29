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
			[Id] Int NOT NULL,

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

INSERT INTO [Task]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
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
	'Id',
	[selectParam].[Id],
	Sum(CASE
		WHEN [a_ActualStage].[Id] IS NULL
			THEN NULL
		ELSE [a_ActualStage].[Id]
	END)
FROM
	[Task] [selectParam]
		LEFT JOIN [TaskStage] [a_ActualStage] ON [selectParam].[Id] = [a_ActualStage].[TaskId] AND [a_ActualStage].[Actual] = 1
GROUP BY
	[selectParam].[Id]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TaskStage') IS NOT NULL)
	DROP TABLE [TaskStage]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Task') IS NOT NULL)
	DROP TABLE [Task]

