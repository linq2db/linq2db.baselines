BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [AsyncDataTable]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [AsyncDataTable]
(
	[Id] INTEGER NOT NULL,

	CONSTRAINT [PK_AsyncDataTable] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite

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
-- SQLite.MS SQLite (asynchronously)
DECLARE @Id  -- Object
SET     @Id = 2
DECLARE @Id_1  -- Int32
SET     @Id_1 = 2

SELECT
	CAST(@Id AS INTEGER),
	[c_1].[Id]
FROM
	[AsyncDataTable] [c_1]
WHERE
	[c_1].[Id] = @Id_1
LIMIT 2

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [AsyncDataTable]

