﻿BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [TestEqualsTable1]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [TestEqualsTable1]
(
	[Id] Int NOT NULL
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [TestEqualsTable2]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [TestEqualsTable2]
(
	[Id] Int NOT NULL,
	[FK] Int     NULL
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	[t1].[Id]
FROM
	[TestEqualsTable1] [t1]
WHERE
	1 = 0

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [TestEqualsTable2]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [TestEqualsTable1]

