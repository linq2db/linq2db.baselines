BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [InsertTable]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [InsertTable]
(
	[Id]         INTEGER   NOT NULL,
	[CreatedOn]  DateTime2     NULL,
	[ModifiedOn] DateTime2     NULL,

	CONSTRAINT [PK_InsertTable] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [InsertTable]
(
	[Id],
	[CreatedOn],
	[ModifiedOn]
)
VALUES
(1,'2020-02-29 17:54:55.123','2020-02-29 17:54:55.123'),
(2,'2020-02-29 17:54:55.123','2020-02-29 17:54:55.123')

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [InsertTable]
(
	[Id],
	[CreatedOn],
	[ModifiedOn]
)
SELECT
	[c_1].[Id] + 10,
	CURRENT_TIMESTAMP,
	CURRENT_TIMESTAMP
FROM
	[InsertTable] [c_1]
WHERE
	[c_1].[Id] > 0

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [InsertTable]

