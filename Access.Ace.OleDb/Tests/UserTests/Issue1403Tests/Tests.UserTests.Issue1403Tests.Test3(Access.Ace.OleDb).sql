BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [Issue1403Tests_3]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [Issue1403Tests_3]
(
	[event_id]          Int           NOT NULL,
	[event_description] NVarChar(255) NOT NULL,

	CONSTRAINT [PK_Issue1403Tests_3] PRIMARY KEY CLUSTERED ([event_id])
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

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
-- Access.Ace.OleDb AccessOleDb

SELECT TOP 1
	[t1].[event_id],
	[t1].[event_description]
FROM
	[Issue1403Tests_3] [t1]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [Issue1403Tests_3]

