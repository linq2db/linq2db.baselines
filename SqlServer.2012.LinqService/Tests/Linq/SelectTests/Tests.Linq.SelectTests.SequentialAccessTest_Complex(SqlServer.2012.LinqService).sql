BeforeExecute
-- SqlServer.2012

SELECT
	IIF([t1].[TypeDiscriminator] = 2, 1, 0),
	[t1].[InheritanceParentId],
	[t1].[TypeDiscriminator],
	[t1].[Name],
	IIF([t1].[TypeDiscriminator] = 1, 1, 0)
FROM
	[InheritanceParent] [t1]

BeforeExecute
-- SqlServer.2012

SELECT
	IIF([t1].[TypeDiscriminator] = 2, 1, 0),
	[t1].[InheritanceChildId],
	[t1].[TypeDiscriminator],
	[t1].[InheritanceParentId],
	[t1].[Name],
	IIF([t1].[TypeDiscriminator] = 1, 1, 0)
FROM
	[InheritanceChild] [t1]

