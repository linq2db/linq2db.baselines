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
	[g_1].[EventUser],
	[p].[ProcessName],
	[u].[UserGroups],
	SUM([g_1].[Diff]) / 60
FROM
	(
		SELECT
			[q].[EventUser],
			[q].[ProcessID],
			round((julianday([q].[EventTime]) - julianday(LAG([q].[EventTime]) OVER(PARTITION BY [q].[EventUser], [q].[ProcessID] ORDER BY [q].[EventTime]))) * 1440) as [Diff]
		FROM
			[Issue1799Table1] [q]
	) [g_1]
		INNER JOIN [Issue1799Table2] [u] ON [u].[UserId] = [g_1].[EventUser]
		INNER JOIN [Issue1799Table3] [p] ON [p].[ProcessID] = [g_1].[ProcessID]
GROUP BY
	[g_1].[EventUser],
	[u].[UserGroups],
	[p].[ProcessName]
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

