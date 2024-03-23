BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [AsyncDataTable]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [AsyncDataTable]
(
	[Id] INTEGER NOT NULL,

	CONSTRAINT [PK_AsyncDataTable] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [AsyncDataTable]
(
	[Id]
)
VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10)

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)
DECLARE @Id  -- Int32
SET     @Id = 2

SELECT
	[c_1].[Id]
FROM
	[AsyncDataTable] [c_1]
WHERE
	[c_1].[Id] = @Id
LIMIT 2

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [AsyncDataTable]

