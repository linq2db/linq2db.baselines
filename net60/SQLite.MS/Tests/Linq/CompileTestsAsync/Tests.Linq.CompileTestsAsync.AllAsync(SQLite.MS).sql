﻿BeforeExecute
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
DECLARE @Id  -- Int32
SET     @Id = 2

SELECT
	CASE
		WHEN (NOT EXISTS(
			SELECT
				*
			FROM
				[AsyncDataTable] [c_1]
			WHERE
				[c_1].[Id] <> @Id
		))
			THEN 1
		ELSE 0
	END

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [AsyncDataTable]

