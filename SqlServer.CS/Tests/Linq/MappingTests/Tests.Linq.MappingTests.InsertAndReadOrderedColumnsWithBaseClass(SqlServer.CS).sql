-- SqlServer.CS SqlServer.2025
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

-- SqlServer.CS SqlServer.2025
SELECT TOP (1)
	[t1].[event_id],
	[t1].[event_description]
FROM
	[OrderedColumnsDerivedRecord] [t1]

