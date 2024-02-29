BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [IsTemporaryTable]
(
	[Id]    Int NOT NULL,
	[Value] Int NOT NULL
)

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[IsTemporaryTable] [t1]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [IsTemporaryTable]

