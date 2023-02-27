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
DECLARE @p_1  -- Int32
SET     @p_1 = 2

SELECT
	CASE
		WHEN @p_1 IN (
			SELECT
				[c_1].[Id]
			FROM
				[AsyncDataTable] [c_1]
		)
			THEN 1
		ELSE 0
	END

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [AsyncDataTable]

