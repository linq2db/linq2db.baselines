-- SQLite.Classic SQLite
DECLARE @take Integer -- Int32
SET     @take = 10

SELECT
	[g_1].[User_1],
	[p].[ProcessName],
	[u].[UserGroups],
	SUM([g_1].[Diff]) / 60
FROM
	(
		SELECT
			[x].[EventUser] as [User_1],
			[x].[ProcessID],
			round((julianday([x].[EventTime]) - julianday(LAG([x].[EventTime]) OVER (PARTITION BY [x].[EventUser], [x].[ProcessID] ORDER BY [x].[EventTime]))) * 1440) as [Diff]
		FROM
			[ProcessEventRecord] [x]
	) [g_1]
		INNER JOIN [UserGroupsRecord] [u] ON [u].[UserId] = [g_1].[User_1]
		INNER JOIN [ProcessNameRecord] [p] ON [p].[ProcessID] = [g_1].[ProcessID]
GROUP BY
	[g_1].[User_1],
	[u].[UserGroups],
	[p].[ProcessName]
LIMIT @take

