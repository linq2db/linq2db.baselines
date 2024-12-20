BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue4460Table]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Issue4460Table]
(
	[Id]      INTEGER       NOT NULL,
	[Code]    NVarChar(255)     NULL,
	[Name]    NVarChar(255)     NULL,
	[Surname] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [Issue4460Table]
(
	[Id],
	[Code],
	[Name],
	[Surname]
)
VALUES
(1,'GrandChild','Tom','Black')

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[Code],
	[t1].[Id],
	[t1].[Name],
	[t1].[Surname]
FROM
	[Issue4460Table] [t1]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue4460Table]

