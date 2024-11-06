BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Data]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Data]
(
	[Id] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [Data]
(
	[Id]
)
VALUES
(1),
(2),
(3)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [SubData1]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [SubData1]
(
	[Id] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [SubData1]
(
	[Id]
)
VALUES
(2),
(3)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [SubData2]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [SubData2]
(
	[Id]     INTEGER       NOT NULL,
	[Reason] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [SubData2]
(
	[Id],
	[Reason]
)
VALUES
(3,'прст1'),
(3,'прст2')

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[i].[Id],
	CASE
		WHEN [a_SubData].[Id] IS NULL THEN NULL
		ELSE (
			SELECT
				[a_SubDatas].[Reason]
			FROM
				[SubData2] [a_SubDatas]
			WHERE
				[a_SubData].[Id] = [a_SubDatas].[Id]
			LIMIT 1
		)
	END
FROM
	[Data] [i]
		LEFT JOIN [SubData1] [a_SubData] ON [i].[Id] = [a_SubData].[Id]
ORDER BY
	[i].[Id]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [SubData2]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [SubData1]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Data]

