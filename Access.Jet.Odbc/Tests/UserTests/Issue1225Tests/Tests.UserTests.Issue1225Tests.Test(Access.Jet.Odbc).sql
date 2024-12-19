BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [Task]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [Task]
(
	[Id] Int NOT NULL,

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
DECLARE @Id Int -- Int32
SET     @Id = 1

INSERT INTO [Task]
(
	[Id]
)
VALUES
(
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 2

INSERT INTO [Task]
(
	[Id]
)
VALUES
(
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @TaskId Int -- Int32
SET     @TaskId = 1
DECLARE @Actual Bit -- Boolean
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
	'Id',
	[it].[Id],
	SUM([a_ActualStage].[Id])
FROM
	[Task] [it]
		LEFT JOIN [TaskStage] [a_ActualStage] ON ([it].[Id] = [a_ActualStage].[TaskId] AND [a_ActualStage].[Actual] = True)
GROUP BY
	[it].[Id]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [TaskStage]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [Task]

