-- Sybase.Managed Sybase
INSERT INTO [OrderedColumnsDerivedRecord]
(
	[event_id],
	[event_description]
)
VALUES
(
	1,
	'New event'
)

-- Sybase.Managed Sybase
SELECT TOP 1
	[t1].[event_id],
	[t1].[event_description]
FROM
	[OrderedColumnsDerivedRecord] [t1]

