BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [User]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [User]
(
	[UserId]     INTEGER       NOT NULL,
	[FirstName]  NVarChar(255)     NULL,
	[LastName]   NVarChar(255)     NULL,
	[Supervisor] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic SQLite

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
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [SampleClass]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [SampleClass]
(
	[Id]    INTEGER      NOT NULL,
	[Value] NVarChar(50)     NULL
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [SampleClass]
(
	[Id],
	[Value]
)
VALUES
(1,'Some')

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[u].[UserId],
	[u].[FirstName],
	[u].[Supervisor]
FROM
	[SampleClass] [t1]
		CROSS JOIN [User] [u]
LIMIT 1

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [SampleClass]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [User]

