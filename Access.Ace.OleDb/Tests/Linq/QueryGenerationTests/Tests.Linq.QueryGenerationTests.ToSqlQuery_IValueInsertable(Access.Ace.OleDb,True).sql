-- Access.Ace.OleDb AccessOleDb

INSERT INTO [TableWithIdentity]
(
	[Value]
)
VALUES
(
	123
)

-- Access.Ace.OleDb AccessOleDb

SELECT TOP 2
	[t1].[Id],
	[t1].[Value]
FROM
	[TableWithIdentity] [t1]

