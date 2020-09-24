BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE [Issue1799Table1]
(
	[EventUser] INTEGER   NOT NULL,
	[ProcessID] INTEGER   NOT NULL,
	[EventTime] DateTime2 NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE [Issue1799Table2]
(
	[UserId]     INTEGER       NOT NULL,
	[UserGroups] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE [Issue1799Table3]
(
	[ProcessID]   INTEGER       NOT NULL,
	[ProcessName] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 10

SELECT
	[q].[User_1],
	[p].[ProcessName],
	[u].[UserGroups],
	Sum([q].[Diff])
FROM
	(
		SELECT
			round((julianday([x].[EventTime]) - julianday(LAG([x].[EventTime]) OVER(PARTITION BY [x].[EventUser], [x].[ProcessID] ORDER BY [x].[EventTime]))) * 1440) as [Diff],
			[x].[EventUser] as [User_1],
			[x].[ProcessID] as [Proc]
		FROM
			[Issue1799Table1] [x]
	) [q]
		INNER JOIN [Issue1799Table2] [u] ON [u].[UserId] = [q].[User_1]
		INNER JOIN [Issue1799Table3] [p] ON [p].[ProcessID] = [q].[Proc]
WHERE
	[q].[Diff] > 0 AND [q].[Diff] <= 5
GROUP BY
	[q].[User_1],
	[u].[UserGroups],
	[p].[ProcessName]
LIMIT @take

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE [Issue1799Table3]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE [Issue1799Table2]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE [Issue1799Table1]

