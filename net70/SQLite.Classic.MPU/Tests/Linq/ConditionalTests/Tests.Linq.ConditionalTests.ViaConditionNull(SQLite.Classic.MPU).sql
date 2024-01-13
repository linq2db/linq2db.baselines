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
	[x].[Id_1],
	[x].[StringProp_1]
FROM
	(
		SELECT
			CASE
				WHEN [p2].[Id] IS NULL THEN '-1'
				ELSE [p2].[StringProp]
			END as [StringProp],
			[p].[Id],
			[p2].[Id] as [Id_1],
			[p2].[StringProp] as [StringProp_1]
		FROM
			[ConditionalData] [p]
				LEFT JOIN [ConditionalData] [p2] ON [p2].[Id] = [p].[Id] AND [p2].[StringProp] IS NOT NULL
	) [x]
WHERE
	[x].[StringProp] = '-1'

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

