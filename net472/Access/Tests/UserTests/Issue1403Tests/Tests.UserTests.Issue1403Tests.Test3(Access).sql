BeforeExecute
-- Access AccessOleDb

CREATE TABLE [Issue1403Tests_3]
(
	[event_description] NVarChar(255) NOT NULL,
	[event_id]          Int           NOT NULL,

	CONSTRAINT [PK_Issue1403Tests_3] PRIMARY KEY CLUSTERED ([event_id])
)

BeforeExecute
-- Access AccessOleDb

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
-- Access AccessOleDb

SELECT TOP 1 
	[t1].[event_description], 
	[t1].[event_id]
FROM
	[Issue1403Tests_3] [t1]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Issue1403Tests_3]

