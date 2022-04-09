BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue1799Table3]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue1799Table3]
(
	[ProcessID]   INTEGER       NOT NULL,
	[ProcessName] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO [Issue1799Table3]
(
	[ProcessID],
	[ProcessName]
)
VALUES
(1,'One'),
(2,'Two')

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	LEAD([p].[ProcessName], 1, 'None') OVER(ORDER BY [p].[ProcessID])
FROM
	[Issue1799Table3] [p]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	LAG([p].[ProcessName], 1, 'None') OVER(ORDER BY [p].[ProcessID])
FROM
	[Issue1799Table3] [p]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue1799Table3]

