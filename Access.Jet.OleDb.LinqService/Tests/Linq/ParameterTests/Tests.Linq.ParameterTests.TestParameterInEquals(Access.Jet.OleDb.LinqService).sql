BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [TestEqualsTable1]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [TestEqualsTable1]
(
	[Id] Int NOT NULL
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [TestEqualsTable2]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [TestEqualsTable2]
(
	[Id] Int NOT NULL,
	[FK] Int     NULL
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[t1].[Id]
FROM
	[TestEqualsTable1] [t1]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[TestEqualsTable2] [t2]
		WHERE
			1 = 0
	)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [TestEqualsTable2]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [TestEqualsTable1]

