BeforeExecute
-- SqlCe

CREATE TABLE [Issue1403Tests_3]
(
	[event_description] NVarChar(255) NOT NULL,
	[event_id]          Int           NOT NULL,

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

DROP TABLE [Issue1403Tests_3]

