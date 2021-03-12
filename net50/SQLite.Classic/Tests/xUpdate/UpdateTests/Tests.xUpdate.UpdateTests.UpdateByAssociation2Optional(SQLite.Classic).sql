﻿BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [MainTable]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [MainTable]
(
	[Id]    INTEGER       NOT NULL,
	[Field] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [MainTable]
(
	[Id],
	[Field]
)
VALUES
(1,'value 1'),
(2,'value 2'),
(3,'value 3')

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [AssociatedTable]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [AssociatedTable]
(
	[Id] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [AssociatedTable]
(
	[Id]
)
VALUES
(1),
(3)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @id  -- Int32
SET     @id = 3

UPDATE
	[MainTable]
SET
	[Field] = 'test'
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[AssociatedTable] [pat]
				LEFT JOIN [MainTable] [a_MainOptional] ON [pat].[Id] = [a_MainOptional].[Id]
		WHERE
			[pat].[Id] = @id AND [MainTable].[Id] = [a_MainOptional].[Id] AND
			([MainTable].[Field] = [a_MainOptional].[Field] OR [MainTable].[Field] IS NULL AND [a_MainOptional].[Field] IS NULL)
	)

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Field]
FROM
	[MainTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [AssociatedTable]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [MainTable]

