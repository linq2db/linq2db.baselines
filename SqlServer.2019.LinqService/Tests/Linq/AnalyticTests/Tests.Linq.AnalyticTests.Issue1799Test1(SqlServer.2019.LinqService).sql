BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [Issue1799Table1]

BeforeExecute
-- SqlServer.2019

IF (OBJECT_ID(N'[Issue1799Table1]', N'U') IS NULL)
	CREATE TABLE [Issue1799Table1]
	(
		[EventUser] Int       NOT NULL,
		[ProcessID] Int       NOT NULL,
		[EventTime] DateTime2 NOT NULL
	)

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [Issue1799Table2]

BeforeExecute
-- SqlServer.2019

IF (OBJECT_ID(N'[Issue1799Table2]', N'U') IS NULL)
	CREATE TABLE [Issue1799Table2]
	(
		[UserId]     Int            NOT NULL,
		[UserGroups] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [Issue1799Table3]

BeforeExecute
-- SqlServer.2019

IF (OBJECT_ID(N'[Issue1799Table3]', N'U') IS NULL)
	CREATE TABLE [Issue1799Table3]
	(
		[ProcessID]   Int            NOT NULL,
		[ProcessName] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 10

SELECT TOP (@take)
	[g_1].[EventUser],
	[p].[ProcessName],
	[u].[UserGroups],
	SUM([g_1].[Diff]) / 60
FROM
	(
		SELECT
			DateDiff(minute, LAG([q].[EventTime]) OVER(PARTITION BY [q].[EventUser], [q].[ProcessID] ORDER BY [q].[EventTime]), [q].[EventTime]) as [Diff],
			[q].[EventUser],
			[q].[ProcessID]
		FROM
			[Issue1799Table1] [q]
	) [g_1]
		INNER JOIN [Issue1799Table2] [u] ON [u].[UserId] = [g_1].[EventUser]
		INNER JOIN [Issue1799Table3] [p] ON [p].[ProcessID] = [g_1].[ProcessID]
WHERE
	[g_1].[Diff] > 0 AND [g_1].[Diff] <= 5
GROUP BY
	[g_1].[EventUser],
	[u].[UserGroups],
	[p].[ProcessName]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [Issue1799Table3]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [Issue1799Table2]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [Issue1799Table1]

