-- SqlServer.Contained.MS SqlServer.2025
INSERT INTO [UnorderedColumnsDerivedRecord]
(
	[event_id],
	[event_description]
)
VALUES
(
	1,
	N'New event'
)

-- SqlServer.Contained.MS SqlServer.2025
SELECT TOP (1)
	[t1].[event_id],
	[t1].[event_description]
FROM
	[UnorderedColumnsDerivedRecord] [t1]

