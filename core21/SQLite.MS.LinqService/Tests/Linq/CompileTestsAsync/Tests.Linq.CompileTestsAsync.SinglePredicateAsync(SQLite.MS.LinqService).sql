﻿BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [AsyncDataTable]
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
DECLARE @Id_1  -- Int32
SET     @Id_1 = 2
DECLARE @take  -- Int32
SET     @take = 2

SELECT
	[c_1].[Id]
FROM
	[AsyncDataTable] [c_1]
WHERE
	[c_1].[Id] = @Id_1
LIMIT @take

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [AsyncDataTable]

