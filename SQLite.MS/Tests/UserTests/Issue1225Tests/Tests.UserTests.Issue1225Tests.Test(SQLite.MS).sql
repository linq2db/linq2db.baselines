﻿BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Task]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Task]
(
	[Id] INTEGER NOT NULL,

	CONSTRAINT [PK_Task] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [TaskStage]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [TaskStage]
(
	[Id]     INTEGER NOT NULL,
	[TaskId] INTEGER NOT NULL,
	[Actual] Bit     NOT NULL,

	CONSTRAINT [PK_TaskStage] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite
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
-- SQLite.MS SQLite
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
-- SQLite.MS SQLite
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
-- SQLite.MS SQLite

SELECT
	[it_1].[Name],
	[it_1].[Value_1],
	SUM(CASE
		WHEN [it_1].[Id] IS NULL THEN NULL
		ELSE [it_1].[Id]
	END)
FROM
	(
		SELECT
			'Id' as [Name],
			[it].[Id] as [Value_1],
			[a_ActualStage].[Id]
		FROM
			[Task] [it]
				LEFT JOIN [TaskStage] [a_ActualStage] ON [it].[Id] = [a_ActualStage].[TaskId] AND [a_ActualStage].[Actual] = 1
	) [it_1]
GROUP BY
	[it_1].[Name],
	[it_1].[Value_1]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [TaskStage]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Task]

