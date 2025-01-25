BeforeExecute
INSERT BULK [InheritanceFilter](Id, Code, Child1Field, Child2Field, Grandchild11Field, Grandchild12Field, Grandchild21Field, Grandchild22Field)

BeforeExecute
-- SqlServer.2017

SELECT
	[t1].[Code],
	[t1].[Id],
	[t1].[Child1Field],
	[t1].[Child2Field],
	[t1].[Grandchild11Field],
	[t1].[Grandchild12Field],
	[t1].[Grandchild21Field],
	[t1].[Grandchild22Field]
FROM
	[InheritanceFilter] [t1]

