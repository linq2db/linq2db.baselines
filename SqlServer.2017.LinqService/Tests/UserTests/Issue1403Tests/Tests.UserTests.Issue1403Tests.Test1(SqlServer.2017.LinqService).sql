BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [Issue1403Tests_1]

BeforeExecute
-- SqlServer.2017

IF (OBJECT_ID(N'[Issue1403Tests_1]', N'U') IS NULL)
	CREATE TABLE [Issue1403Tests_1]
	(
		[event_id]          Int            NOT NULL,
		[event_description] NVarChar(4000) NOT NULL,

		CONSTRAINT [PK_Issue1403Tests_1] PRIMARY KEY CLUSTERED ([event_id])
	)

BeforeExecute
-- SqlServer.2017

INSERT INTO [Issue1403Tests_1]
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
-- SqlServer.2017

SELECT TOP (1)
	[t1].[event_id],
	[t1].[event_description]
FROM
	[Issue1403Tests_1] [t1]

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [Issue1403Tests_1]

