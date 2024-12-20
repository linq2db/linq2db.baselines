BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Entry]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Entry]
(
	[Id]     Guid          NOT NULL,
	[RecSrc] NVarChar(255)     NULL,
	[Value]  INTEGER       NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

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
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Entry]

