﻿BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue2816Table]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Issue2816Table]
(
	[Id]   INTEGER       NOT NULL,
	[Text] NVarChar(255)     NULL,

	CONSTRAINT [PK_Issue2816Table] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [Issue2816Table]
(
	[Id],
	[Text]
)
VALUES
(0,''),
(1,'a'),
(2,' m '),
(3,' '),
(4,'  '),
(5,NULL)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[p].[Id],
	[p].[Text]
FROM
	[Issue2816Table] [p]
WHERE
	[p].[Text] IS NULL OR LTRIM([p].[Text], '	
                 　') = ''

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Text]
FROM
	[Issue2816Table] [t1]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue2816Table]

