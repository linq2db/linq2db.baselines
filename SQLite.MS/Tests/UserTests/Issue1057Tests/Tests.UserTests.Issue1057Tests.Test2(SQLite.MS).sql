BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Task]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Task]
(
	[Id]         INTEGER       NOT NULL,
	[TargetName] NVarChar(255)     NULL,

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
DECLARE @TargetName NVarChar(12) -- String
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
-- SQLite.MS SQLite
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
	@Id,
	@TargetName
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
	[p].[Id],
	[p].[TargetName],
	[a_ActualStage].[Id]
FROM
	[Task] [p]
		LEFT JOIN [TaskStage] [a_ActualStage] ON [p].[Id] = [a_ActualStage].[TaskId] AND [a_ActualStage].[Actual] = 1
WHERE
	[p].[TargetName] = 'bda.Requests'

BeforeExecute
-- SQLite.MS SQLite

SELECT
	CASE
		WHEN [p].[TargetName] = 'None' THEN 1
		ELSE 0
	END,
	[p].[Id],
	[p].[TargetName],
	CASE
		WHEN [p].[TargetName] = 'bda.Requests' THEN 1
		ELSE 0
	END,
	[a_ActualStage].[Id]
FROM
	[Task] [p]
		LEFT JOIN [TaskStage] [a_ActualStage] ON [p].[Id] = [a_ActualStage].[TaskId] AND [a_ActualStage].[Actual] = 1
ORDER BY
	[p].[Id]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [TaskStage]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Task]

