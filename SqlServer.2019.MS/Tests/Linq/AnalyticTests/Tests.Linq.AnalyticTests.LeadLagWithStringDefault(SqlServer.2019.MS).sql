﻿BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [Issue1799Table3]

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

IF (OBJECT_ID(N'[Issue1799Table3]', N'U') IS NULL)
	CREATE TABLE [Issue1799Table3]
	(
		[ProcessID]   Int            NOT NULL,
		[ProcessName] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

INSERT INTO [Issue1799Table3]
(
	[ProcessID],
	[ProcessName]
)
VALUES
(1,N'One'),
(2,N'Two')

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	LEAD([p].[ProcessName], 1, N'None') OVER(ORDER BY [p].[ProcessID])
FROM
	[Issue1799Table3] [p]

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	LAG([p].[ProcessName], 1, N'None') OVER(ORDER BY [p].[ProcessID])
FROM
	[Issue1799Table3] [p]

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [Issue1799Table3]

