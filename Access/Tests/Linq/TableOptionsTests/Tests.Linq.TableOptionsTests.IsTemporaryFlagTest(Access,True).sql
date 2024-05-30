BeforeExecute
-- Access AccessOleDb

CREATE TABLE [IsTemporaryTable]
(
	[Id]    Int NOT NULL,
	[Value] Int NOT NULL
)

BeforeExecute
-- Access AccessOleDb

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[IsTemporaryTable] [t1]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [IsTemporaryTable]

