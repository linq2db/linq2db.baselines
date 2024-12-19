BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [IsTemporaryTable]
(
	[Id]    Int NOT NULL,
	[Value] Int NOT NULL
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[IsTemporaryTable] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [IsTemporaryTable]

