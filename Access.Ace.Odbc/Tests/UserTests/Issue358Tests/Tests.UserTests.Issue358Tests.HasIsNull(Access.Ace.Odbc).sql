BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [TestIssue358Class]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [TestIssue358Class]
(
	[MyEnum]  Int     NULL,
	[MyEnum2] Int NOT NULL
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[p].[MyEnum],
	[p].[MyEnum2]
FROM
	[TestIssue358Class] [p]
WHERE
	[p].[MyEnum] <> 0 OR [p].[MyEnum] IS NULL

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [TestIssue358Class]

