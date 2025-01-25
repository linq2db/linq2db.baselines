BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [User]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [User]
(
	[UserId]     INTEGER       NOT NULL,
	[FirstName]  NVarChar(255)     NULL,
	[LastName]   NVarChar(255)     NULL,
	[Supervisor] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [User]
(
	[UserId],
	[FirstName],
	[LastName],
	[Supervisor]
)
VALUES
(1,'First','Last','Sup')

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [SampleClass]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [SampleClass]
(
	[Id]    INTEGER      NOT NULL,
	[Value] NVarChar(50)     NULL
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [SampleClass]
(
	[Id],
	[Value]
)
VALUES
(1,'Some')

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[u].[UserId],
	[u].[FirstName],
	'Enriched',
	[u].[Supervisor],
	1
FROM
	[SampleClass] [t1]
		INNER JOIN ([SampleClass] [u_1]
			INNER JOIN [User] [u] ON 1=1)
		ON [u].[UserId] = [t1].[Id]
LIMIT 1

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [SampleClass]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [User]

