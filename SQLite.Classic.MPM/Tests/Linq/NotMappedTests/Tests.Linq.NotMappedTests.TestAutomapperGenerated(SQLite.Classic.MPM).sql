BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [SuperClass]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [SuperClass]
(
	[Id]    INTEGER       NOT NULL,
	[Value] NVarChar(255)     NULL,

	CONSTRAINT [PK_SuperClass] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

INSERT INTO [SuperClass]
(
	[Id],
	[Value]
)
VALUES
(1,'Super 1'),
(2,'Super 2'),
(3,'Super 3'),
(4,'Super 4'),
(5,'Super 5'),
(6,'Super 6'),
(7,'Super 7'),
(8,'Super 8'),
(9,'Super 9'),
(10,'Super 10')

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Subclass1]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Subclass1]
(
	[Id]       INTEGER       NOT NULL,
	[ParentId] INTEGER           NULL,
	[Value]    NVarChar(255)     NULL,

	CONSTRAINT [PK_Subclass1] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

INSERT INTO [Subclass1]
(
	[Id],
	[ParentId],
	[Value]
)
VALUES
(10,NULL,'Sub1 1'),
(20,2,'Sub1 2'),
(30,NULL,'Sub1 3'),
(40,4,'Sub1 4'),
(50,NULL,'Sub1 5'),
(60,6,'Sub1 6'),
(70,NULL,'Sub1 7'),
(80,8,'Sub1 8'),
(90,NULL,'Sub1 9'),
(100,10,'Sub1 10')

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Subclass2]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Subclass2]
(
	[Id]       INTEGER       NOT NULL,
	[ParentId] INTEGER           NULL,
	[Value]    NVarChar(255)     NULL,

	CONSTRAINT [PK_Subclass2] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

INSERT INTO [Subclass2]
(
	[Id],
	[ParentId],
	[Value]
)
VALUES
(100,NULL,'Sub2 1'),
(200,NULL,'Sub2 2'),
(300,NULL,'Sub2 3'),
(400,40,'Sub2 4'),
(500,NULL,'Sub2 5'),
(600,NULL,'Sub2 6'),
(700,NULL,'Sub2 7'),
(800,80,'Sub2 8'),
(900,NULL,'Sub2 9'),
(1000,NULL,'Sub2 10')

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t].[Id],
	[t].[Value],
	[a_Association1].[Id],
	[a_Association1].[Value],
	[a_Association1].[ParentId],
	CASE
		WHEN [a_Association1].[Id] IS NOT NULL AND [a_Association2].[Id] IS NOT NULL
			THEN 1
		ELSE 0
	END,
	[a_Association2].[Id],
	[a_Association2].[Value],
	[a_Association2].[ParentId]
FROM
	[SuperClass] [t]
		LEFT JOIN [Subclass1] [a_Association1] ON [t].[Id] = [a_Association1].[ParentId]
		LEFT JOIN [Subclass2] [a_Association2] ON [a_Association1].[Id] = [a_Association2].[ParentId]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Subclass2]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Subclass1]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [SuperClass]

