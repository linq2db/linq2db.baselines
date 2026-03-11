-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [IsTemporaryTable]
(
	[Id]    Int NOT NULL,
	[Value] Int NOT NULL,

	CONSTRAINT [PK_IsTemporaryTable] PRIMARY KEY CLUSTERED ([Id])
)

-- Access.Jet.OleDb AccessOleDb

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[IsTemporaryTable] [t1]

-- Access.Jet.OleDb AccessOleDb

DROP TABLE [IsTemporaryTable]

