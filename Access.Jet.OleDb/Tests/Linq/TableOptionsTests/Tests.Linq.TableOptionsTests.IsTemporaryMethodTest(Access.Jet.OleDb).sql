﻿BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [TestTable]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [TestTable]
(
	[Id]    Int NOT NULL,
	[Value] Int NOT NULL,

	CONSTRAINT [PK_TestTable] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[t1].[Id],
	[t1].[Value],
	[t1].[Id],
	[t1].[Value],
	[t1].[Id],
	[t1].[Value]
FROM
	[TestTable] [t1]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [TestTable]

