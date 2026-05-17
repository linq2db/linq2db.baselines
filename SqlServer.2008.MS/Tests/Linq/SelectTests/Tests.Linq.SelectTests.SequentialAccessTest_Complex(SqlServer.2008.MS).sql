-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[TypeDiscriminator],
	[t1].[InheritanceParentId],
	[t1].[Name]
FROM
	[InheritanceParent] [t1]

-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[TypeDiscriminator],
	[t1].[InheritanceChildId],
	[t1].[InheritanceParentId],
	[t1].[Name]
FROM
	[InheritanceChild] [t1]

