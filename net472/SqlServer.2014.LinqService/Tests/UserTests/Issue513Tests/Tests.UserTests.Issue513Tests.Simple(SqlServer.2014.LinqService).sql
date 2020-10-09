BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT 
	[t1].[InheritanceParentId], 
	[t1].[TypeDiscriminator], 
	[t1].[Name]
FROM
	[InheritanceParent] [t1]

BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT 
	[t1].[InheritanceChildId], 
	[t1].[TypeDiscriminator], 
	[t1].[InheritanceParentId], 
	[t1].[Name]
FROM
	[InheritanceChild] [t1]

