BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue1096Task') IS NOT NULL)
	DROP TABLE [Issue1096Task]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue1096Task') IS NULL)
	EXECUTE('
		CREATE TABLE [Issue1096Task]
		(
			[Id]         Int           NOT NULL,
			[TargetName] NVarChar(255)     NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue1096TaskStage') IS NOT NULL)
	DROP TABLE [Issue1096TaskStage]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue1096TaskStage') IS NULL)
	EXECUTE('
		CREATE TABLE [Issue1096TaskStage]
		(
			[Id]     Int NOT NULL,
			[TaskId] Int NOT NULL,
			[Actual] Bit NOT NULL,

			CONSTRAINT [PK_Issue1096TaskStage] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @TargetName UniVarChar(12) -- String
SET     @TargetName = 'bda.Requests'

INSERT INTO [Issue1096Task]
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
SET     @Id = 1
DECLARE @TargetName UniVarChar(12) -- String
SET     @TargetName = 'bda.Requests'

INSERT INTO [Issue1096Task]
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
SET     @Id = 1
DECLARE @TaskId Integer -- Int32
SET     @TaskId = 1
DECLARE @Actual Bit -- Boolean
SET     @Actual = 1

INSERT INTO [Issue1096TaskStage]
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

SELECT DISTINCT
	[t].[Id],
	[t].[TargetName],
	[a_ActualStage].[Id],
	[a_ActualStage].[TaskId],
	[a_ActualStage].[Actual]
FROM
	[Issue1096Task] [t]
		LEFT JOIN [Issue1096TaskStage] [a_ActualStage] ON [t].[Id] = [a_ActualStage].[TaskId] AND [a_ActualStage].[Actual] = 1

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue1096TaskStage') IS NOT NULL)
	DROP TABLE [Issue1096TaskStage]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue1096Task') IS NOT NULL)
	DROP TABLE [Issue1096Task]

