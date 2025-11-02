-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [TempTable]

-- SQLite.Classic SQLite

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [TempTable]
(
	[ID] INTEGER NOT NULL
)

-- SQLite.Classic SQLite

INSERT INTO [TempTable]
(
	[ID]
)
VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7)

-- SQLite.Classic SQLite

SELECT
	[t].[ID]
FROM
	[Parent] [p]
		INNER JOIN [TempTable] [t] ON [p].[ParentID] = [t].[ID]

-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [TempTable]

