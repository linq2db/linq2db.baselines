BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [Issue1799Table3]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

IF (OBJECT_ID(N'[Issue1799Table3]', N'U') IS NULL)
	CREATE TABLE [Issue1799Table3]
	(
		[ProcessID]   Int            NOT NULL,
		[ProcessName] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @ProcessID Int -- Int32
SET     @ProcessID = 1
DECLARE @ProcessName NVarChar(4000) -- String
SET     @ProcessName = N'One'

INSERT INTO [Issue1799Table3]
(
	[ProcessID],
	[ProcessName]
)
VALUES
(
	@ProcessID,
	@ProcessName
)

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @ProcessID Int -- Int32
SET     @ProcessID = 2
DECLARE @ProcessName NVarChar(4000) -- String
SET     @ProcessName = N'Two'

INSERT INTO [Issue1799Table3]
(
	[ProcessID],
	[ProcessName]
)
VALUES
(
	@ProcessID,
	@ProcessName
)

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @ProcessID Int -- Int32
SET     @ProcessID = 3
DECLARE @ProcessName NVarChar(4000) -- String
SET     @ProcessName = N'Three'

INSERT INTO [Issue1799Table3]
(
	[ProcessID],
	[ProcessName]
)
VALUES
(
	@ProcessID,
	@ProcessName
)

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @ProcessID Int -- Int32
SET     @ProcessID = 4
DECLARE @ProcessName NVarChar(4000) -- String
SET     @ProcessName = N'Four'

INSERT INTO [Issue1799Table3]
(
	[ProcessID],
	[ProcessName]
)
VALUES
(
	@ProcessID,
	@ProcessName
)

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	LEAD([p].[ProcessName], 2) OVER(ORDER BY [p].[ProcessID])
FROM
	[Issue1799Table3] [p]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	LEAD([p].[ProcessName]) OVER(ORDER BY [p].[ProcessID])
FROM
	[Issue1799Table3] [p]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	LAG([p].[ProcessName], 2) OVER(ORDER BY [p].[ProcessID])
FROM
	[Issue1799Table3] [p]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	LAG([p].[ProcessName]) OVER(ORDER BY [p].[ProcessID])
FROM
	[Issue1799Table3] [p]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [Issue1799Table3]

