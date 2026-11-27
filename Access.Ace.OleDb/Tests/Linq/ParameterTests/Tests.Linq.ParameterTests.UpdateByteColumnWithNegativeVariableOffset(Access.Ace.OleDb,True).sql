-- Access.Ace.OleDb AccessOleDb
UPDATE
	[ByteFieldUpdateTable] [t1]
SET
	[t1].[Field] = [t1].[Field] + -1

-- Access.Ace.OleDb AccessOleDb
SELECT TOP 2
	[t1].[Id],
	[t1].[Field]
FROM
	[ByteFieldUpdateTable] [t1]

