BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [ConditionalData]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [ConditionalData]
(
	[Id]         INTEGER       NOT NULL,
	[StringProp] NVarChar(255)     NULL,

	CONSTRAINT [PK_ConditionalData] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

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
(10,'String10')

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[x].[Id],
	[x].[StringProp]
FROM
	[ConditionalData] [x]
WHERE
	CASE
		WHEN [x].[Id] IS NULL THEN '-1'
		WHEN [x].[StringProp] LIKE '%1%' ESCAPE '~'
			THEN '1'
		ELSE '2'
	END = '-1'

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[StringProp]
FROM
	[ConditionalData] [t1]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [ConditionalData]

