BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [Task]
(
	[Id] INTEGER NOT NULL,

	CONSTRAINT [PK_Task] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [TaskStage]
(
	[Id]     INTEGER NOT NULL,
	[TaskId] INTEGER NOT NULL,
	[Actual] Bit     NOT NULL,

	CONSTRAINT [PK_TaskStage] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
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
-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
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
-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @TaskId  -- Int32
SET     @TaskId = 1
DECLARE @Actual  -- Boolean
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
-- SQLite.Classic SQLite

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
	[selectParam].[Id],
	[selectParam].[Id]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE [TaskStage]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE [Task]

