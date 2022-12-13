BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue1799Table1]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Issue1799Table1]
(
	[EventUser] INTEGER   NOT NULL,
	[ProcessID] INTEGER   NOT NULL,
	[EventTime] DateTime2 NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue1799Table2]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Issue1799Table2]
(
	[UserId]     INTEGER       NOT NULL,
	[UserGroups] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue1799Table3]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Issue1799Table3]
(
	[ProcessID]   INTEGER       NOT NULL,
	[ProcessName] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 10

SELECT
	[t1].[User_1],
	[t1].[ProcessName],
	[t1].[UserGroups],
	Sum([t1].[Diff])
FROM
	(
		SELECT
			[x].[EventUser] as [User_1],
			[u].[UserGroups],
			[p].[ProcessName],
			round((julianday([x].[EventTime]) - julianday(LAG([x].[EventTime]) OVER(PARTITION BY [x].[EventUser], [x].[ProcessID] ORDER BY [x].[EventTime]))) * 1440) as [Diff]
		FROM
			[Issue1799Table1] [x]
				INNER JOIN [Issue1799Table2] [u] ON [u].[UserId] = [x].[EventUser]
				INNER JOIN [Issue1799Table3] [p] ON [p].[ProcessID] = [x].[ProcessID]
	) [t1]
GROUP BY
	[t1].[User_1],
	[t1].[UserGroups],
	[t1].[ProcessName]
LIMIT @take

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue1799Table3]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue1799Table2]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue1799Table1]

