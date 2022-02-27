BeforeExecute
-- SqlServer.2014 SqlServer.2012

CREATE TABLE [Issue1403Tests_2]
(
	[event_id]          Int            NOT NULL,
	[event_description] NVarChar(4000) NOT NULL,

	CONSTRAINT [PK_Issue1403Tests_2] PRIMARY KEY CLUSTERED ([event_id])
)

BeforeExecute
-- SqlServer.2014 SqlServer.2012

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
-- SqlServer.2014 SqlServer.2012
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	[t1].[event_id],
	[t1].[event_description]
FROM
	[Issue1403Tests_2] [t1]

BeforeExecute
-- SqlServer.2014 SqlServer.2012

DROP TABLE [Issue1403Tests_2]

