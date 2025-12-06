-- Access.Jet.OleDb AccessOleDb

INSERT INTO [TableWithIdentity]
(
	[Value]
)
VALUES
(
	123
)

-- Access.Jet.OleDb AccessOleDb

SELECT TOP 2
	[t1].[Id],
	[t1].[Value]
FROM
	[TableWithIdentity] [t1]

