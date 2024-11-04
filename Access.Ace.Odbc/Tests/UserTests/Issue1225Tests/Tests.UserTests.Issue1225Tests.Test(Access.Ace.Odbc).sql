BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Task]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [Task]
(
	[Id] Int NOT NULL,

	CONSTRAINT [PK_Task] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [TaskStage]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [TaskStage]
(
	[Id]     Int NOT NULL,
	[TaskId] Int NOT NULL,
	[Actual] Bit NOT NULL,

	CONSTRAINT [PK_TaskStage] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id  -- Int32
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
-- Access.Ace.Odbc AccessODBC
DECLARE @Id  -- Int32
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
-- Access.Ace.Odbc AccessODBC
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
-- Access.Ace.Odbc AccessODBC

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
-- Access.Ace.Odbc AccessODBC

DROP TABLE [TaskStage]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Task]

