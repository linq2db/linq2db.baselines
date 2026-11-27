-- Access.LibRed.Mdb Access.LibRed AccessLibRed
INSERT INTO [OrderedColumnsRecord]
(
	[event_id],
	[event_description]
)
VALUES
(
	1,
	'New event'
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT TOP 1
	[t1].[event_id],
	[t1].[event_description]
FROM
	[OrderedColumnsRecord] [t1]

