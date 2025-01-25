BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [Issue1799Table1]

BeforeExecute
-- SqlServer.2016

IF (OBJECT_ID(N'[Issue1799Table1]', N'U') IS NULL)
	CREATE TABLE [Issue1799Table1]
	(
		[EventUser] Int       NOT NULL,
		[ProcessID] Int       NOT NULL,
		[EventTime] DateTime2 NOT NULL
	)

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [Issue1799Table2]

BeforeExecute
-- SqlServer.2016

IF (OBJECT_ID(N'[Issue1799Table2]', N'U') IS NULL)
	CREATE TABLE [Issue1799Table2]
	(
		[UserId]     Int            NOT NULL,
		[UserGroups] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [Issue1799Table3]

BeforeExecute
-- SqlServer.2016

IF (OBJECT_ID(N'[Issue1799Table3]', N'U') IS NULL)
	CREATE TABLE [Issue1799Table3]
	(
		[ProcessID]   Int            NOT NULL,
		[ProcessName] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2016
DECLARE @take Int -- Int32
SET     @take = 10

SELECT TOP (@take)
	[g_1].[User_1],
	[p].[ProcessName],
	[u].[UserGroups],
	SUM([g_1].[Diff]) / 60
FROM
	(
		SELECT
			[x].[EventUser] as [User_1],
			[x].[ProcessID] as [Proc],
			DateDiff(minute, LAG([x].[EventTime]) OVER(PARTITION BY [x].[EventUser], [x].[ProcessID] ORDER BY [x].[EventTime]), [x].[EventTime]) as [Diff]
		FROM
			[Issue1799Table1] [x]
	) [g_1]
		INNER JOIN [Issue1799Table2] [u] ON [u].[UserId] = [g_1].[User_1]
		INNER JOIN [Issue1799Table3] [p] ON [p].[ProcessID] = [g_1].[Proc]
GROUP BY
	[g_1].[User_1],
	[u].[UserGroups],
	[p].[ProcessName]

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [Issue1799Table3]

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [Issue1799Table2]

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [Issue1799Table1]

