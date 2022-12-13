BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Task]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Task]
(
	[Id] INTEGER NOT NULL,

	CONSTRAINT [PK_Task] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [TaskStage]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [TaskStage]
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
	[t1].[Name],
	[t1].[Key_1],
	Sum(CASE
		WHEN [t1].[Id] IS NULL THEN NULL
		ELSE [t1].[Id]
	END)
FROM
	(
		SELECT
			'Id' as [Name],
			[selectParam].[Id] as [Key_1],
			[a_ActualStage].[Id]
		FROM
			[Task] [selectParam]
				LEFT JOIN [TaskStage] [a_ActualStage] ON [selectParam].[Id] = [a_ActualStage].[TaskId] AND [a_ActualStage].[Actual] = 1
	) [t1]
GROUP BY
	[t1].[Name],
	[t1].[Key_1]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [TaskStage]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Task]

