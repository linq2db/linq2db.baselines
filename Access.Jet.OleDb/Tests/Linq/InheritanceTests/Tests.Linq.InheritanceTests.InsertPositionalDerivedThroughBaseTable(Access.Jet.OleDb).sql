-- Access.Jet.OleDb AccessOleDb
INSERT INTO [InheritanceFilterPositional]
(
	[Id],
	[Code],
	[Value]
)
VALUES
(
	1,
	1,
	42
)

-- Access.Jet.OleDb AccessOleDb
SELECT TOP 2
	[t1].[Id],
	[t1].[Code],
	[t1].[Value]
FROM
	[InheritanceFilterPositional] [t1]

