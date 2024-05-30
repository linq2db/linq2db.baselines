BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Issue1096Task]', N'U') IS NOT NULL)
	DROP TABLE [Issue1096Task]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Issue1096Task]', N'U') IS NULL)
	CREATE TABLE [Issue1096Task]
	(
		[Id]         Int            NOT NULL,
		[TargetName] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Issue1096TaskStage]', N'U') IS NOT NULL)
	DROP TABLE [Issue1096TaskStage]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Issue1096TaskStage]', N'U') IS NULL)
	CREATE TABLE [Issue1096TaskStage]
	(
		[Id]     Int NOT NULL,
		[TaskId] Int NOT NULL,
		[Actual] Bit NOT NULL,

		CONSTRAINT [PK_Issue1096TaskStage] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @TargetName NVarChar(4000) -- String
SET     @TargetName = N'bda.Requests'

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
-- SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @TargetName NVarChar(4000) -- String
SET     @TargetName = N'bda.Requests'

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
-- SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @TaskId Int -- Int32
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
-- SqlServer.2005

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
-- SqlServer.2005

IF (OBJECT_ID(N'[Issue1096TaskStage]', N'U') IS NOT NULL)
	DROP TABLE [Issue1096TaskStage]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Issue1096Task]', N'U') IS NOT NULL)
	DROP TABLE [Issue1096Task]

