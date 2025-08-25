BeforeExecute
-- SqlCe (asynchronously)

INSERT INTO [Issue1403Tests_2]
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
-- SqlCe (asynchronously)

SELECT TOP (1)
	[t1].[event_id] as [EventId],
	[t1].[event_description] as [EventDescription]
FROM
	[Issue1403Tests_2] [t1]

