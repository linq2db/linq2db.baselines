-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [Issue1403Tests_3]
(
	[event_id],
	[event_description]
)
VALUES
(
	1,
	N'New event'
)

-- SqlServer.2005.MS SqlServer.2005

SELECT TOP (1)
	[t1].[event_id],
	[t1].[event_description]
FROM
	[Issue1403Tests_3] [t1]

