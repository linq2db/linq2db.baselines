﻿BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [IsTemporaryTable]
(
	[Id]    Int NOT NULL,
	[Value] Int NOT NULL
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[IsTemporaryTable] [t1]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [IsTemporaryTable]

