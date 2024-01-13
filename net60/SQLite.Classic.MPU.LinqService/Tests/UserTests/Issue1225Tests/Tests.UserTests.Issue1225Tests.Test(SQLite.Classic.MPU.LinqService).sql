BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Task]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Task]
(
	[Id] INTEGER NOT NULL,

	CONSTRAINT [PK_Task] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [TaskStage]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [TaskStage]
(
	[Id]     INTEGER NOT NULL,
	[TaskId] INTEGER NOT NULL,
	[Actual] Bit     NOT NULL,

	CONSTRAINT [PK_TaskStage] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
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
-- SQLite.Classic.MPU SQLite.Classic SQLite
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
-- SQLite.Classic.MPU SQLite.Classic SQLite
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
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[it_1].[c1],
	[it_1].[Id],
	Sum(CASE
		WHEN [it_1].[Id_1] IS NULL
			THEN NULL
		ELSE [it_1].[Id_1]
	END)
FROM
	(
		SELECT
			'Id' as [c1],
			[it].[Id],
			[a_ActualStage].[Id] as [Id_1]
		FROM
			[Task] [it]
				LEFT JOIN [TaskStage] [a_ActualStage] ON [it].[Id] = [a_ActualStage].[TaskId] AND [a_ActualStage].[Actual] = 1 AND [a_ActualStage].[Actual] IS NOT NULL
	) [it_1]
GROUP BY
	[it_1].[c1],
	[it_1].[Id]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [TaskStage]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Task]

