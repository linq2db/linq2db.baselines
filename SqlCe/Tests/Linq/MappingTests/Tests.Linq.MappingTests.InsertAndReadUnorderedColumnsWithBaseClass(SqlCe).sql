-- SqlCe
INSERT INTO [UnorderedColumnsDerivedRecord]
(
	[event_id],
	[event_description]
)
VALUES
(
	1,
	'New event'
)

-- SqlCe
SELECT TOP (1)
	[t1].[event_id],
	[t1].[event_description]
FROM
	[UnorderedColumnsDerivedRecord] [t1]

