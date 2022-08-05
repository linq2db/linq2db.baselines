﻿BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

CREATE TABLE [Issue1403Tests_3]
(
	[event_description] NVarChar(4000) NOT NULL,
	[event_id]          Int            NOT NULL,

	CONSTRAINT [PK_Issue1403Tests_3] PRIMARY KEY CLUSTERED ([event_id])
)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

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
-- SqlServer.2005.MS SqlServer.2005

SELECT TOP (1)
	[t1].[event_description],
	[t1].[event_id]
FROM
	[Issue1403Tests_3] [t1]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Issue1403Tests_3]', N'U') IS NOT NULL)
	DROP TABLE [Issue1403Tests_3]

