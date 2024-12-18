BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [Task]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [Task]
(
	[Id]         Int           NOT NULL,
	[TargetName] NVarChar(255)     NULL,

	CONSTRAINT [PK_Task] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [TaskStage]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [TaskStage]
(
	[Id]     Int NOT NULL,
	[TaskId] Int NOT NULL,
	[Actual] Bit NOT NULL,

	CONSTRAINT [PK_TaskStage] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @TargetName VarWChar(12) -- String
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
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @TargetName VarWChar(4) -- String
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
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @TaskId Integer -- Int32
SET     @TaskId = 1
DECLARE @Actual Boolean
SET     @Actual = True

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
-- Access.Jet.OleDb AccessOleDb

SELECT
	[p].[Id],
	[p].[TargetName],
	[a_ActualStage].[Id]
FROM
	[Task] [p]
		LEFT JOIN [TaskStage] [a_ActualStage] ON ([p].[Id] = [a_ActualStage].[TaskId] AND [a_ActualStage].[Actual] = True)
WHERE
	[p].[TargetName] = 'bda.Requests' AND [p].[TargetName] IS NOT NULL

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[p].[TargetName],
	[p].[Id],
	[a_ActualStage].[Id]
FROM
	[Task] [p]
		LEFT JOIN [TaskStage] [a_ActualStage] ON ([p].[Id] = [a_ActualStage].[TaskId] AND [a_ActualStage].[Actual] = True)
ORDER BY
	[p].[Id]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [TaskStage]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [Task]

