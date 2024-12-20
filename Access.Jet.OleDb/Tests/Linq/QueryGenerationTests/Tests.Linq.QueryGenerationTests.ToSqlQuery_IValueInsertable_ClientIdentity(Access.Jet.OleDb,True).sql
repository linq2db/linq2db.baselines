BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [TableWithIdentity]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [TableWithIdentity]
(
	[Id]    Int  NOT NULL IDENTITY,
	[Value] Int  NOT NULL,

	CONSTRAINT [PK_TableWithIdentity] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

INSERT INTO [TableWithIdentity]
(
	[Id],
	[Value]
)
VALUES
(
	543,
	123
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT TOP 2
	[t1].[Id],
	[t1].[Value]
FROM
	[TableWithIdentity] [t1]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [TableWithIdentity]

