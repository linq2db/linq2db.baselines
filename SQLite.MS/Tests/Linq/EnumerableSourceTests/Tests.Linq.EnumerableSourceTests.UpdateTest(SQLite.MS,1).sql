﻿BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [TableToInsert]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [TableToInsert]
(
	[Id]    INTEGER       NOT NULL,
	[Value] NVarChar(255)     NULL,

	CONSTRAINT [PK_TableToInsert] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [TableToInsert]
(
	[Id],
	[Value]
)
VALUES
(2,'Janet'),
(3,'Doe')

BeforeExecute
-- SQLite.MS SQLite

UPDATE
	[TableToInsert]
SET
	[Value] = [r].[Value]
FROM
	(
		SELECT NULL [Id], NULL [Value] WHERE 1 = 0
		UNION ALL
		VALUES
			(2,'Janet Updated'), (3,'Doe Updated')
		) [r]
WHERE
	[TableToInsert].[Id] = [r].[Id]

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[TableToInsert] [t1]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [TableToInsert]

