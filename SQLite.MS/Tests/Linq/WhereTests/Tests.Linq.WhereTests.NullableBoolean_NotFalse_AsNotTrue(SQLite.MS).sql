BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [NullableBool]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [NullableBool]
(
	[ID]   INTEGER NOT NULL,
	[Bool] Bit         NULL
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[r].[ID],
	[r].[Bool]
FROM
	[NullableBool] [r]
WHERE
	[r].[Bool] = 1 OR [r].[Bool] IS NULL

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [NullableBool]

