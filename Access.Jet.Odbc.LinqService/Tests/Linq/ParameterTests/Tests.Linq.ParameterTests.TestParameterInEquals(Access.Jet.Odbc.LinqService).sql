﻿BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [TestEqualsTable1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [TestEqualsTable1]
(
	[Id] Int NOT NULL
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [TestEqualsTable2]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [TestEqualsTable2]
(
	[Id] Int NOT NULL,
	[FK] Int     NULL
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id]
FROM
	[TestEqualsTable1] [t1]
WHERE
	1 = 0

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [TestEqualsTable2]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [TestEqualsTable1]

