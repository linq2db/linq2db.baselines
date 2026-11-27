-- Access.Ace.Odbc AccessODBC
INSERT INTO [BinaryColumnRecord]
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

-- Access.Ace.Odbc AccessODBC
SELECT TOP 2
	[t1].[ID],
	[t1].[Array],
	[t1].[Binary]
FROM
	[BinaryColumnRecord] [t1]
WHERE
	[t1].[ID] = 1

-- Access.Ace.Odbc AccessODBC
SELECT TOP 2
	[t1].[ID],
	[t1].[Array],
	[t1].[Binary]
FROM
	[BinaryColumnRecord] [t1]
WHERE
	[t1].[Array] = 0x010203

-- Access.Ace.Odbc AccessODBC
SELECT TOP 2
	[t1].[ID],
	[t1].[Array],
	[t1].[Binary]
FROM
	[BinaryColumnRecord] [t1]
WHERE
	[t1].[Binary] = 0x0405

