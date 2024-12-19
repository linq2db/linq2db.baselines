BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [TableWithIdentity]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [TableWithIdentity]
(
	[Id]    Int  NOT NULL IDENTITY,
	[Value] Int  NOT NULL,

	CONSTRAINT [PK_TableWithIdentity] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @value Integer -- Int32
SET     @value = 123

INSERT INTO [TableWithIdentity]
(
	[Id],
	[Value]
)
VALUES
(
	543,
	@value
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT TOP 2
	[t1].[Id],
	[t1].[Value]
FROM
	[TableWithIdentity] [t1]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [TableWithIdentity]

