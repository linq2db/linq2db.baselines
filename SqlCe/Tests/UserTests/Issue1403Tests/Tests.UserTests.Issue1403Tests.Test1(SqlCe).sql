BeforeExecute
-- SqlCe

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
-- SqlCe

SELECT TOP (1)
	[t1].[event_id] as [EventId],
	[t1].[event_description] as [EventDescription]
FROM
	[Issue1403Tests_1] [t1]

