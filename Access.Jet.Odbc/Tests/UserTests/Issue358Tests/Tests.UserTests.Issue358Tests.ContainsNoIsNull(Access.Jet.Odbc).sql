BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [TestIssue358Class]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [TestIssue358Class]
(
	[MyEnum]  Int     NULL,
	[MyEnum2] Int NOT NULL
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[p].[MyEnum],
	[p].[MyEnum2]
FROM
	[TestIssue358Class] [p]
WHERE
	[p].[MyEnum2] NOT IN (1)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [TestIssue358Class]

