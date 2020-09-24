BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [TempTable]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)

CREATE TABLE [TempTable]
(
	[ID] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)

INSERT INTO [TempTable]
(
	[ID]
)
SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)

DROP TABLE [TempTable]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE [TempTable]

