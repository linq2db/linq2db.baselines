BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 10

SELECT
	[g_2].[User_1],
	[g_2].[ProcessName],
	[g_2].[UserGroups],
	[g_2].[SUM_1] / 60
FROM
	(
		SELECT
			SUM([g_1].[Diff]) as [SUM_1],
			[g_1].[User_1],
			[p].[ProcessName],
			[u].[UserGroups]
		FROM
			(
				SELECT
					[x].[EventUser] as [User_1],
					[x].[ProcessID],
					round((julianday([x].[EventTime]) - julianday(LAG([x].[EventTime]) OVER(PARTITION BY [x].[EventUser], [x].[ProcessID] ORDER BY [x].[EventTime]))) * 1440) as [Diff]
				FROM
					[Issue1799Table1] [x]
			) [g_1]
				INNER JOIN [Issue1799Table2] [u] ON [u].[UserId] = [g_1].[User_1]
				INNER JOIN [Issue1799Table3] [p] ON [p].[ProcessID] = [g_1].[ProcessID]
		GROUP BY
			[g_1].[User_1],
			[u].[UserGroups],
			[p].[ProcessName]
	) [g_2]
LIMIT @take

