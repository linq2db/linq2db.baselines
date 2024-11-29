BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Entry]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Entry]
(
	[Id]     Guid          NOT NULL,
	[RecSrc] NVarChar(255)     NULL,
	[Value]  INTEGER       NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[e].[Id],
	[e].[RecSrc],
	[e].[Value]
FROM
	[Entry] [e]
WHERE
	([e].[RecSrc], [e].[Value]) = ('default', 2007) OR
	([e].[RecSrc], [e].[Value]) = ('other', 2008)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Entry]

