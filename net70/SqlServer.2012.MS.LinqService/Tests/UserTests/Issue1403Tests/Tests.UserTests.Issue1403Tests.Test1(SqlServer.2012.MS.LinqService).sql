﻿BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[Issue1403Tests_1]', N'U') IS NOT NULL)
	DROP TABLE [Issue1403Tests_1]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[Issue1403Tests_1]', N'U') IS NULL)
	CREATE TABLE [Issue1403Tests_1]
	(
		[event_id]          Int            NOT NULL,
		[event_description] NVarChar(4000) NOT NULL,

		CONSTRAINT [PK_Issue1403Tests_1] PRIMARY KEY CLUSTERED ([event_id])
	)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

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
-- SqlServer.2012.MS SqlServer.2012
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	[t1].[event_description],
	[t1].[event_id]
FROM
	[Issue1403Tests_1] [t1]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[Issue1403Tests_1]', N'U') IS NOT NULL)
	DROP TABLE [Issue1403Tests_1]

