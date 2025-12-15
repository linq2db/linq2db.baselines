-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [TempTable]

-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [TempTable]
(
	[ID] INTEGER NOT NULL,

	CONSTRAINT [PK_TempTable] PRIMARY KEY ([ID])
)

-- SQLite.Classic SQLite

INSERT INTO [TempTable]
(
	[ID]
)
SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

-- SQLite.Classic SQLite

SELECT
	[t].[ID]
FROM
	[Parent] [p]
		INNER JOIN [TempTable] [t] ON [p].[ParentID] = [t].[ID]

-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [TempTable]

