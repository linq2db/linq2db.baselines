BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [Task]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [Task]
(
	[Id]         Int           NOT NULL,
	[TargetName] NVarChar(255)     NULL,

	CONSTRAINT [PK_Task] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [TaskStage]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [TaskStage]
(
	[Id]     Int NOT NULL,
	[TaskId] Int NOT NULL,
	[Actual] Bit NOT NULL,

	CONSTRAINT [PK_TaskStage] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @TargetName NVarChar(12) -- String
SET     @TargetName = 'bda.Requests'

INSERT INTO [Task]
(
	[Id],
	[TargetName]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @TargetName NVarChar(4) -- String
SET     @TargetName = 'None'

INSERT INTO [Task]
(
	[Id],
	[TargetName]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @TaskId  -- Int32
SET     @TaskId = 1
DECLARE @Actual  -- Boolean
SET     @Actual = True

INSERT INTO [TaskStage]
(
	[Id],
	[TaskId],
	[Actual]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[p].[Id],
	[p].[TargetName],
	[a_ActualStage].[Id]
FROM
	[Task] [p]
		LEFT JOIN [TaskStage] [a_ActualStage] ON ([p].[Id] = [a_ActualStage].[TaskId] AND [a_ActualStage].[Actual] = True)
WHERE
	[p].[TargetName] = 'bda.Requests'

BeforeExecute
-- Access.Jet.Odbc AccessODBC

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
-- Access.Jet.Odbc AccessODBC

DROP TABLE [TaskStage]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [Task]

