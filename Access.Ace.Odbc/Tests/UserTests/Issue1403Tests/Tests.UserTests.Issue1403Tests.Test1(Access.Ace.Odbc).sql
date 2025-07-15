BeforeExecute
-- Access.Ace.Odbc AccessODBC

INSERT INTO [Issue1403Tests_1]
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
-- Access.Ace.Odbc AccessODBC

SELECT TOP 1
	[t1].[event_id],
	[t1].[event_description]
FROM
	[Issue1403Tests_1] [t1]

