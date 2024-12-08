BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [TestIssue358Class]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [TestIssue358Class]
(
	[MyEnum]  Int     NULL,
	[MyEnum2] Int NOT NULL
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[p].[MyEnum],
	[p].[MyEnum2]
FROM
	[TestIssue358Class] [p]
WHERE
	[p].[MyEnum2] NOT IN (1)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [TestIssue358Class]

