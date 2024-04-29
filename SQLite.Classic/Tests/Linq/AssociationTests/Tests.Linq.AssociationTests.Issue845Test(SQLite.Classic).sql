﻿BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Employee]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Employee]
(
	[Id]           INTEGER NOT NULL,
	[DepartmentId] INTEGER     NULL
)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Department]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Department]
(
	[DepartmentId] INTEGER       NOT NULL,
	[Name]         NVarChar(255)     NULL,
	[Deleted]      Bit           NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[e].[Id],
	[a_Department].[Name]
FROM
	[Employee] [e]
		LEFT JOIN [Department] [a_Department] ON [e].[DepartmentId] = [a_Department].[DepartmentId] AND [a_Department].[Deleted] = 0

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Department]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Employee]

