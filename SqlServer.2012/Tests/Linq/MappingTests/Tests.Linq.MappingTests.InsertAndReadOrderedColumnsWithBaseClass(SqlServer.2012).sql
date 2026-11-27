-- SqlServer.2012
INSERT INTO [OrderedColumnsDerivedRecord]
(
	[event_id],
	[event_description]
)
VALUES
(
	1,
	N'New event'
)

-- SqlServer.2012
SELECT TOP (1)
	[t1].[event_id],
	[t1].[event_description]
FROM
	[OrderedColumnsDerivedRecord] [t1]

