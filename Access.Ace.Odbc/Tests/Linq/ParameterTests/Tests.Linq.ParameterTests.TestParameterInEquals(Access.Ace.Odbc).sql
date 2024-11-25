BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [TestEqualsTable1]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [TestEqualsTable1]
(
	[Id] Int NOT NULL
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [TestEqualsTable2]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [TestEqualsTable2]
(
	[Id] Int NOT NULL,
	[FK] Int     NULL
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[t1].[Id]
FROM
	[TestEqualsTable1] [t1]
WHERE
	EXISTS(
		SELECT
			1
		FROM
			[TestEqualsTable2] [t2]
		WHERE
			1 = 0
	)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [TestEqualsTable2]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [TestEqualsTable1]

