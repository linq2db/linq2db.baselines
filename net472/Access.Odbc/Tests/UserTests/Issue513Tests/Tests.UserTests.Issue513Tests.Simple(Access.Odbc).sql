BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[InheritanceParentId],
	[t1].[TypeDiscriminator],
	[t1].[Name]
FROM
	[InheritanceParent] [t1]

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[t1].[InheritanceParentId],
	[t1].[TypeDiscriminator],
	[t1].[Name]
FROM
	[InheritanceParent] [t1]

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[InheritanceChildId],
	[t1].[TypeDiscriminator],
	[t1].[InheritanceParentId],
	[t1].[Name],
	[a_Parent].[InheritanceParentId],
	[a_Parent].[TypeDiscriminator],
	[a_Parent].[Name]
FROM
	[InheritanceChild] [t1]
		LEFT JOIN [InheritanceParent] [a_Parent] ON [t1].[InheritanceParentId] = [a_Parent].[InheritanceParentId]

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[t1].[InheritanceChildId],
	[t1].[TypeDiscriminator],
	[t1].[InheritanceParentId],
	[t1].[Name]
FROM
	[InheritanceChild] [t1]

