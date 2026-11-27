-- Access.Jet.OleDb AccessOleDb
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

-- Access.Jet.OleDb AccessOleDb
SELECT TOP 2
	[t1].[ID],
	[t1].[Array],
	[t1].[Binary]
FROM
	[BinaryColumnRecord] [t1]
WHERE
	[t1].[ID] = 1

-- Access.Jet.OleDb AccessOleDb
SELECT TOP 2
	[t1].[ID],
	[t1].[Array],
	[t1].[Binary]
FROM
	[BinaryColumnRecord] [t1]
WHERE
	[t1].[Array] = 0x010203

-- Access.Jet.OleDb AccessOleDb
SELECT TOP 2
	[t1].[ID],
	[t1].[Array],
	[t1].[Binary]
FROM
	[BinaryColumnRecord] [t1]
WHERE
	[t1].[Binary] = 0x0405

