BeforeExecute
-- SqlServer.2019 (asynchronously)

INSERT INTO [Issue1303]
(
	[ID],
	[Array],
	[Binary]
)
VALUES
(
	1,
	0x010203,
	0x0405
)

BeforeExecute
-- SqlServer.2019 (asynchronously)

SELECT TOP (2)
	[t1].[ID],
	[t1].[Array],
	[t1].[Binary]
FROM
	[Issue1303] [t1]
WHERE
	[t1].[ID] = 1

BeforeExecute
-- SqlServer.2019 (asynchronously)

SELECT TOP (2)
	[t1].[ID],
	[t1].[Array],
	[t1].[Binary]
FROM
	[Issue1303] [t1]
WHERE
	[t1].[Array] = 0x010203

BeforeExecute
-- SqlServer.2019 (asynchronously)

SELECT TOP (2)
	[t1].[ID],
	[t1].[Array],
	[t1].[Binary]
FROM
	[Issue1303] [t1]
WHERE
	[t1].[Binary] = 0x0405

