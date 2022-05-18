﻿BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

CREATE TABLE [Issue1403Tests_3]
(
	[event_description] NVarChar(4000) NOT NULL,
	[event_id]          Int            NOT NULL,

	CONSTRAINT [PK_Issue1403Tests_3] PRIMARY KEY CLUSTERED ([event_id])
)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

INSERT INTO [Issue1403Tests_3]
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
-- SqlServer.Contained.MS SqlServer.2019

SELECT TOP (1)
	[t1].[event_description],
	[t1].[event_id]
FROM
	[Issue1403Tests_3] [t1]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [Issue1403Tests_3]

