BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [ConditionalData]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [ConditionalData]
(
	[Id]         INTEGER       NOT NULL,
	[StringProp] NVarChar(255)     NULL,

	CONSTRAINT [PK_ConditionalData] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

INSERT INTO [ConditionalData]
(
	[Id],
	[StringProp]
)
VALUES
(1,'String1'),
(2,'String2'),
(3,NULL),
(4,'String4'),
(5,'String5'),
(6,NULL),
(7,'String7'),
(8,'String8'),
(9,NULL),
(10,'String10'),
(11,'-1')

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[x].[Id],
	[x].[StringProp]
FROM
	[ConditionalData] [x]
WHERE
	1 = 0

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[StringProp]
FROM
	[ConditionalData] [t1]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [ConditionalData]

