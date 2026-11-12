-- Access.LibRed.Accdb Access.LibRed AccessLibRed
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

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT TOP 1
	[t1].[event_id],
	[t1].[event_description]
FROM
	[Issue1403Tests_3] [t1]

