BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

INSERT INTO [Issue1403Tests_2]
(
	[event_id],
	[event_description]
)
VALUES
(
	1,
	N'New event'
)

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT TOP (1)
	[t1].[event_id],
	[t1].[event_description]
FROM
	[Issue1403Tests_2] [t1]

