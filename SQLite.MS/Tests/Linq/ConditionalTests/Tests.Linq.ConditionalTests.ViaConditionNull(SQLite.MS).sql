﻿BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [ConditionalData]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [ConditionalData]
(
	[Id]         INTEGER       NOT NULL,
	[StringProp] NVarChar(255)     NULL,

	CONSTRAINT [PK_ConditionalData] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite

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
-- SQLite.MS SQLite

SELECT
	[x].[Id],
	[p2].[Id],
	[p2].[StringProp]
FROM
	[ConditionalData] [x]
		LEFT JOIN [ConditionalData] [p2] ON [p2].[Id] = [x].[Id] AND [p2].[StringProp] IS NOT NULL
WHERE
	[p2].[Id] IS NULL OR [p2].[StringProp] = '-1' AND [p2].[Id] IS NOT NULL

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[StringProp]
FROM
	[ConditionalData] [t1]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [ConditionalData]

