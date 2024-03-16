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
(10,'String10')

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[x_1].[Id],
	[x_1].[child],
	[x_1].[child_1],
	[x_1].[StringProp_1]
FROM
	(
		SELECT
			CASE
				WHEN ([x].[StringProp] = '1' OR [x].[StringProp] IS NULL)
					THEN '2'
				WHEN [x].[StringProp] = '2'
					THEN [x].[StringProp]
				ELSE [x].[StringProp] || '2'
			END as [StringProp],
			CASE
				WHEN ([x].[StringProp] = '1' OR [x].[StringProp] IS NULL)
					THEN NULL
				WHEN [x].[StringProp] = '2'
					THEN 1
				ELSE 2
			END as [IntProp],
			[x].[Id],
			CASE
				WHEN ([x].[StringProp] = '1' OR [x].[StringProp] IS NULL)
					THEN 1
				ELSE 0
			END as [child],
			[x].[StringProp] as [child_1],
			[x].[StringProp] || '2' as [StringProp_1]
		FROM
			[ConditionalData] [x]
	) [x_1]
WHERE
	[x_1].[StringProp] LIKE '%2' ESCAPE '~' AND [x_1].[IntProp] = 2

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

