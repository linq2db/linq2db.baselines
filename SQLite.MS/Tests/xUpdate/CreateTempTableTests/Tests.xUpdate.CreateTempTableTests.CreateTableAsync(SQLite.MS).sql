-- SQLite.MS SQLite

DROP TABLE IF EXISTS [TempTable]

-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [TempTable]
(
	[ID] INTEGER NOT NULL
)

-- SQLite.MS SQLite

INSERT INTO [TempTable]
(
	[ID]
)
SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

-- SQLite.MS SQLite

SELECT
	[t].[ID]
FROM
	[Parent] [p]
		INNER JOIN [TempTable] [t] ON [p].[ParentID] = [t].[ID]

-- SQLite.MS SQLite

DROP TABLE IF EXISTS [TempTable]

