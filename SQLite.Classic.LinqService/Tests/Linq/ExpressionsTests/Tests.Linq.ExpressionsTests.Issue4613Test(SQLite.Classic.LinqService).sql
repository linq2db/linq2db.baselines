BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4613Service]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue4613Service]
(
	[IdContract] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4613Contract]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue4613Contract]
(
	[Id] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[contract].[Id],
	[servProj].[IdContract]
FROM
	[Issue4613Service] [servProj]
		INNER JOIN [Issue4613Contract] [contract] ON [servProj].[IdContract] = [contract].[Id]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4613Contract]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4613Service]

