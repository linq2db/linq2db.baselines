BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	IIF([t1].[TypeDiscriminator] = 2, True, False),
	[t1].[InheritanceParentId],
	[t1].[TypeDiscriminator],
	[t1].[Name],
	IIF([t1].[TypeDiscriminator] = 1, True, False)
FROM
	[InheritanceParent] [t1]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	IIF([t1].[TypeDiscriminator] = 2, True, False),
	[t1].[InheritanceChildId],
	[t1].[TypeDiscriminator],
	[t1].[InheritanceParentId],
	[t1].[Name],
	IIF([t1].[TypeDiscriminator] = 1, True, False)
FROM
	[InheritanceChild] [t1]

