﻿BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [IsTemporaryTable]
(
	[Id]    Int NOT NULL,
	[Value] Int NOT NULL
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[IsTemporaryTable] [t1]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [IsTemporaryTable]

