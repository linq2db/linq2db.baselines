﻿BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [TestTable]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [TestTable]
(
	[Id]    Int NOT NULL,
	[Value] Int NOT NULL
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[Value],
	[t2].[Id],
	[t2].[Value],
	[t3].[Id],
	[t3].[Value]
FROM
	([TestTable] [t1]
		INNER JOIN [TestTable] [t2] ON ([t1].[Id] = [t2].[Id]))
		INNER JOIN [TestTable] [t3] ON ([t2].[Id] = [t3].[Id])

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [TestTable]

