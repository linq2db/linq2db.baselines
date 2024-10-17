BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [ConditionalData]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [ConditionalData]
(
	[Id]         INTEGER       NOT NULL,
	[StringProp] NVarChar(255)     NULL,

	CONSTRAINT [PK_ConditionalData] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic SQLite

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
-- SQLite.Classic SQLite
DECLARE @IntProp  -- Int32
SET     @IntProp = 1
DECLARE @IntProp_1  -- Int32
SET     @IntProp_1 = 2

SELECT
	[x].[Id],
	CASE
		WHEN [x].[StringProp] = '1' OR [x].[StringProp] IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN [x].[StringProp] = '2' THEN 1
		ELSE 0
	END,
	[x].[StringProp],
	@IntProp,
	[x].[StringProp] || '2',
	@IntProp_1
FROM
	[ConditionalData] [x]
WHERE
	CASE
		WHEN [x].[StringProp] = '1' OR [x].[StringProp] IS NULL THEN '2'
		WHEN [x].[StringProp] = '2' THEN [x].[StringProp]
		ELSE [x].[StringProp] || '2'
	END LIKE '%2' ESCAPE '~' AND
	CASE
		WHEN [x].[StringProp] = '1' OR [x].[StringProp] IS NULL THEN NULL
		WHEN [x].[StringProp] = '2' THEN 1
		ELSE 2
	END = 2

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[StringProp]
FROM
	[ConditionalData] [t1]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [ConditionalData]

