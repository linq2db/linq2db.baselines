BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [TableWithIdentity]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [TableWithIdentity]
(
	[Id]    Int  NOT NULL IDENTITY,
	[Value] Int  NOT NULL,

	CONSTRAINT [PK_TableWithIdentity] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

INSERT INTO [TableWithIdentity]
(
	[Value]
)
VALUES
(
	123
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT TOP 2
	[t1].[Id],
	[t1].[Value]
FROM
	[TableWithIdentity] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [TableWithIdentity]

