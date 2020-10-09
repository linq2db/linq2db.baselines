BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [Batch]
(
	[Id]    INTEGER       NOT NULL,
	[Value] NVarChar(255)     NULL,

	CONSTRAINT [PK_Batch] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite

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
-- SQLite.MS SQLite

CREATE TABLE [Confirmation]
(
	[BatchId] INTEGER   NOT NULL,
	[Date]    DateTime2 NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

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
-- SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 1
DECLARE @take_1  -- Int32
SET     @take_1 = 2

SELECT
	[t1].[Id],
	[t1].[CreationDate],
	[t1].[Value_1]
FROM
	(
		SELECT
			[x].[Id],
			(
				SELECT
					[p].[Date]
				FROM
					[Confirmation] [p]
				WHERE
					[x].[Id] = [p].[BatchId]
				LIMIT @take
			) as [CreationDate],
			[x].[Value] as [Value_1]
		FROM
			[Batch] [x]
		ORDER BY
			[x].[Id] DESC
		LIMIT @take_1
	) [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [Confirmation]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [Batch]

