BeforeExecute
-- SqlServer.2005

CREATE TABLE [Issue1403Tests_3]
(
	[event_description] NVarChar(4000) NOT NULL,
	[event_id]          Int            NOT NULL,

	CONSTRAINT [PK_Issue1403Tests_3] PRIMARY KEY CLUSTERED ([event_id])
)

BeforeExecute
-- SqlServer.2005

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
-- SqlServer.2005

DROP TABLE [Issue1403Tests_3]

