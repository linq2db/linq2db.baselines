BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [Issue1403Tests_2]

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

IF (OBJECT_ID(N'[Issue1403Tests_2]', N'U') IS NULL)
	CREATE TABLE [Issue1403Tests_2]
	(
		[event_id]          Int            NOT NULL,
		[event_description] NVarChar(4000) NOT NULL,

		CONSTRAINT [PK_Issue1403Tests_2] PRIMARY KEY CLUSTERED ([event_id])
	)

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

INSERT INTO [Issue1403Tests_2]
(
	[event_id],
	[event_description]
)
VALUES
(
	1,
	N'New event'
)

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT TOP (1)
	[t1].[event_id],
	[t1].[event_description]
FROM
	[Issue1403Tests_2] [t1]

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [Issue1403Tests_2]

