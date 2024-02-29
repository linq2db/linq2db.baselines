BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue2816Table]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue2816Table]
(
	[Id]   INTEGER       NOT NULL,
	[Text] NVarChar(255)     NULL,

	CONSTRAINT [PK_Issue2816Table] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

INSERT INTO [Issue2816Table]
(
	[Id],
	[Text]
)
VALUES
(1,'	'),
(2,' 	 '),
(3,' 	x ')

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[p].[Id],
	[p].[Text]
FROM
	[Issue2816Table] [p]
WHERE
	NOT ([p].[Text] IS NULL OR LTRIM([p].[Text], '	
                 　') = '')

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue2816Table]

