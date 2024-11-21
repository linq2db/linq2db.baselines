BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [WhereWithString]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [WhereWithString]
(
	[Id]          INTEGER       NOT NULL,
	[StringValue] NVarChar(255)     NULL,

	CONSTRAINT [PK_WhereWithString] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [WhereWithString]
(
	[Id],
	[StringValue]
)
VALUES
(1,'Str1')

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[x].[Id],
	[x].[StringValue]
FROM
	[WhereWithString] [x]
WHERE
	[x].[StringValue] LIKE '%Str%' ESCAPE '~' AND [x].[StringValue] IS NOT NULL

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [WhereWithString]

