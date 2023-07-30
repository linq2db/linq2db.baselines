BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Batch]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Batch]
(
	[Id]    INTEGER       NOT NULL,
	[Value] NVarChar(255)     NULL,

	CONSTRAINT [PK_Batch] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

INSERT INTO [Batch]
(
	[Id],
	[Value]
)
VALUES
(1,'V1'),
(2,'V2'),
(3,'V3')

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Confirmation]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Confirmation]
(
	[BatchId] INTEGER   NOT NULL,
	[Date]    DateTime2 NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

INSERT INTO [Confirmation]
(
	[BatchId],
	[Date]
)
VALUES
(1,'2019-04-09 14:30:00'),
(2,'2019-04-09 14:30:20'),
(2,'2019-04-09 14:30:25'),
(3,'2019-04-09 14:30:35')

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[BatchId],
	[t1].[CreationDate],
	[t1].[Value_1]
FROM
	(
		SELECT
			[x].[Id] as [BatchId],
			(
				SELECT
					[p].[Date]
				FROM
					[Confirmation] [p]
				WHERE
					[x].[Id] = [p].[BatchId]
				LIMIT 1
			) as [CreationDate],
			[x].[Value] as [Value_1]
		FROM
			[Batch] [x]
		ORDER BY
			[x].[Id] DESC
		LIMIT 2
	) [t1]
ORDER BY
	[t1].[BatchId]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Confirmation]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Batch]

