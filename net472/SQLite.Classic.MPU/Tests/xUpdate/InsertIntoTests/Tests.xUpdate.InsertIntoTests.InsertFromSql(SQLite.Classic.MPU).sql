﻿BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [InsertTestClass]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [InsertTestClass]
(
	[Id]         INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT,
	[Value]      INTEGER  NOT NULL,
	[OtherValue] INTEGER      NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO [InsertTestClass]
(
	[Value],
	[OtherValue]
)
VALUES
(1,100)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE [InsertTestClassDest]
(
	[Id]         INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT,
	[Value]      INTEGER  NOT NULL,
	[OtherValue] INTEGER      NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO [InsertTestClassDest]
(
	[Value]
)
SELECT
	[x].[Value]
FROM
	(
		select * from InsertTestClass
	) [x]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 2

SELECT
	[t1].[Id],
	[t1].[Value],
	[t1].[OtherValue]
FROM
	[InsertTestClass] [t1]
LIMIT @take

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 2

SELECT
	[t1].[Id],
	[t1].[Value],
	[t1].[OtherValue]
FROM
	[InsertTestClassDest] [t1]
LIMIT @take

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE [InsertTestClassDest]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [InsertTestClass]

