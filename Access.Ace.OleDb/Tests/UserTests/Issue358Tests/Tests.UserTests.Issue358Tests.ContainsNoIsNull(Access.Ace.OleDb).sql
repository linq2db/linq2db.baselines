BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	[p].[Id],
	[p].[MyEnum],
	[p].[MyEnum2]
FROM
	[TestIssue358Class] [p]
WHERE
	[p].[MyEnum2] NOT IN (1)

