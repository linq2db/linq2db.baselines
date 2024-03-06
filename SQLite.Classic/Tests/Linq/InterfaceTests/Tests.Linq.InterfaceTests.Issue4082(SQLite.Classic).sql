BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [UserAccount]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [UserAccount]
(
	[Id]   INTEGER       NOT NULL,
	[Name] NVarChar(255)     NULL,

	CONSTRAINT [PK_UserAccount] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [UserAccount]
(
	[Id],
	[Name]
)
VALUES
(1,'old_name'),
(2,'old_name')

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[x].[Id],
	[x].[Name]
FROM
	[UserAccount] [x]
WHERE
	[x].[Id] = 1

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [UserAccount]

