-- Access.Ace.OleDb AccessOleDb
SELECT
	[a_Parent].[InheritanceParentId]
FROM
	[InheritanceChild] [c_1]
		LEFT JOIN [InheritanceParent] [a_Parent] ON (IIF([c_1].[TypeDiscriminator] = 1, [c_1].[InheritanceParentId], NULL) = [a_Parent].[InheritanceParentId])
ORDER BY
	[c_1].[InheritanceChildId]

