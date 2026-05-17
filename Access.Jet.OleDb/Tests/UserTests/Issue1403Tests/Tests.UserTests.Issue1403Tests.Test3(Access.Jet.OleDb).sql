-- Access.Jet.OleDb AccessOleDb

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

-- Access.Jet.OleDb AccessOleDb

SELECT TOP 1
	[t1].[event_id],
	[t1].[event_description]
FROM
	[Issue1403Tests_3] [t1]

