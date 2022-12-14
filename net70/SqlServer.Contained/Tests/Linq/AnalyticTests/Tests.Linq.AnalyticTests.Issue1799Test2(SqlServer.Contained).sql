BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [Issue1799Table1]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

IF (OBJECT_ID(N'[Issue1799Table1]', N'U') IS NULL)
	CREATE TABLE [Issue1799Table1]
	(
		[EventUser] Int       NOT NULL,
		[ProcessID] Int       NOT NULL,
		[EventTime] DateTime2 NOT NULL
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [Issue1799Table2]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

IF (OBJECT_ID(N'[Issue1799Table2]', N'U') IS NULL)
	CREATE TABLE [Issue1799Table2]
	(
		[UserId]     Int            NOT NULL,
		[UserGroups] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [Issue1799Table3]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

IF (OBJECT_ID(N'[Issue1799Table3]', N'U') IS NULL)
	CREATE TABLE [Issue1799Table3]
	(
		[ProcessID]   Int            NOT NULL,
		[ProcessName] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 10

SELECT TOP (@take)
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
			DateDiff(minute, LAG([x].[EventTime]) OVER(PARTITION BY [x].[EventUser], [x].[ProcessID] ORDER BY [x].[EventTime]), [x].[EventTime]) as [Diff]
		FROM
			[Issue1799Table1] [x]
				INNER JOIN [Issue1799Table2] [u] ON [u].[UserId] = [x].[EventUser]
				INNER JOIN [Issue1799Table3] [p] ON [p].[ProcessID] = [x].[ProcessID]
	) [t1]
GROUP BY
	[t1].[User_1],
	[t1].[UserGroups],
	[t1].[ProcessName]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [Issue1799Table3]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [Issue1799Table2]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [Issue1799Table1]

