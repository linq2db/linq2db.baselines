-- SqlCe

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

-- SqlCe

SELECT TOP (2)
	[t1].[ID],
	[t1].[Array] as [Array_1],
	[t1].[Binary] as [Binary_1]
FROM
	[Issue1303] [t1]
WHERE
	[t1].[ID] = 1

-- SqlCe

SELECT TOP (2)
	[t1].[ID],
	[t1].[Array] as [Array_1],
	[t1].[Binary] as [Binary_1]
FROM
	[Issue1303] [t1]
WHERE
	[t1].[Array] = 0x010203

-- SqlCe

SELECT TOP (2)
	[t1].[ID],
	[t1].[Array] as [Array_1],
	[t1].[Binary] as [Binary_1]
FROM
	[Issue1303] [t1]
WHERE
	[t1].[Binary] = 0x0405

