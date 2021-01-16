BeforeExecute
-- Access AccessOleDb

CREATE TABLE [Issue1403Tests_2]
(
	[event_id]          Int           NOT NULL,
	[event_description] NVarChar(255) NOT NULL,

	CONSTRAINT [PK_Issue1403Tests_2] PRIMARY KEY CLUSTERED ([event_id])
)

BeforeExecute
-- Access AccessOleDb

INSERT INTO [Issue1403Tests_2]
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
-- Access AccessOleDb

DROP TABLE [Issue1403Tests_2]

