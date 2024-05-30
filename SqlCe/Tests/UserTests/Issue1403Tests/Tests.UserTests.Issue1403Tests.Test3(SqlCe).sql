BeforeExecute
-- SqlCe

DROP TABLE [Issue1403Tests_3]

BeforeExecute
-- SqlCe

CREATE TABLE [Issue1403Tests_3]
(
	[event_id]          Int           NOT NULL,
	[event_description] NVarChar(255) NOT NULL,

	CONSTRAINT [PK_Issue1403Tests_3] PRIMARY KEY ([event_id])
)

BeforeExecute
-- SqlCe

INSERT INTO [Issue1403Tests_3]
(
	[event_id],
	[event_description]
)
VALUES
(
	1,
	'New event'
)

BeforeExecute
-- SqlCe

SELECT TOP (1)
	[t1].[event_id] as [EventId],
	[t1].[event_description] as [EventDescription]
FROM
	[Issue1403Tests_3] [t1]

BeforeExecute
-- SqlCe

DROP TABLE [Issue1403Tests_3]

