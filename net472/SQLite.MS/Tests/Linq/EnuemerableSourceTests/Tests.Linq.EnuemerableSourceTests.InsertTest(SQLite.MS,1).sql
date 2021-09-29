﻿BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [TableToInsert]
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
SELECT
	[r].[Id],
	[r].[Value]
FROM
	(
		SELECT NULL AS [Id], NULL AS [Value] WHERE 0
		UNION ALL
		VALUES
			(2,'Janet'), (3,'Doe')
		) [r]
		LEFT JOIN [TableToInsert] [t] ON [t].[Id] = [r].[Id]
WHERE
	[t].[Id] IS NULL

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [TableToInsert]
(
	[Id],
	[Value]
)
SELECT
	[r].[Id],
	[r].[Value]
FROM
	(
		SELECT NULL AS [Id], NULL AS [Value] WHERE 0
		UNION ALL
		VALUES
			(2,'Janet'), (3,'Doe')
		) [r]
		LEFT JOIN [TableToInsert] [t] ON [t].[Id] = [r].[Id]
WHERE
	[t].[Id] IS NULL

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [TableToInsert]

