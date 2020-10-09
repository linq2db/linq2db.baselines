BeforeExecute
-- SqlServer.2012

CREATE TABLE [Issue1799Table1]
(
	[EventUser] Int      NOT NULL,
	[ProcessID] Int      NOT NULL,
	[EventTime] DateTime NOT NULL
)

BeforeExecute
-- SqlServer.2012

CREATE TABLE [Issue1799Table2]
(
	[UserId]     Int            NOT NULL,
	[UserGroups] NVarChar(4000)     NULL
)

BeforeExecute
-- SqlServer.2012

CREATE TABLE [Issue1799Table3]
(
	[ProcessID]   Int            NOT NULL,
	[ProcessName] NVarChar(4000)     NULL
)

BeforeExecute
-- SqlServer.2012
DECLARE @take Int -- Int32
SET     @take = 10

SELECT TOP (@take) 
	[q].[User_1], 
	[p].[ProcessName], 
	[u].[UserGroups], 
	Sum([q].[Diff])
FROM
	( 
		SELECT 
			[x].[EventUser] as [User_1], 
			[x].[ProcessID] as [Proc], 
			DateDiff(minute, LAG([x].[EventTime]) OVER(PARTITION BY [x].[EventUser], [x].[ProcessID] ORDER BY [x].[EventTime]), [x].[EventTime]) as [Diff]
		FROM
			[Issue1799Table1] [x]
	) [q]
		INNER JOIN [Issue1799Table2] [u] ON [u].[UserId] = [q].[User_1]
		INNER JOIN [Issue1799Table3] [p] ON [p].[ProcessID] = [q].[Proc]
GROUP BY
	[q].[User_1],
	[u].[UserGroups],
	[p].[ProcessName]

BeforeExecute
-- SqlServer.2012

DROP TABLE [Issue1799Table3]

BeforeExecute
-- SqlServer.2012

DROP TABLE [Issue1799Table2]

BeforeExecute
-- SqlServer.2012

DROP TABLE [Issue1799Table1]

