BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue4613Service]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Issue4613Service]
(
	[IdContract] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue4613Contract]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Issue4613Contract]
(
	[Id] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[contract].[Id],
	[servProj].[IdContract]
FROM
	[Issue4613Service] [servProj]
		INNER JOIN [Issue4613Contract] [contract] ON [servProj].[IdContract] = [contract].[Id]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue4613Contract]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue4613Service]

