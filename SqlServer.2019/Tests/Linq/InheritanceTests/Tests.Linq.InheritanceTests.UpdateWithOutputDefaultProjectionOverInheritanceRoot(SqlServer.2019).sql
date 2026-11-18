-- SqlServer.2019
UPDATE
	[InheritanceFilter]
SET
	[Code] = [InheritanceFilter].[Code]
OUTPUT
	DELETED.[Id],
	DELETED.[Code],
	DELETED.[Child1Field],
	DELETED.[Child2Field],
	DELETED.[Grandchild11Field],
	DELETED.[Grandchild12Field],
	DELETED.[Grandchild21Field],
	DELETED.[Grandchild22Field],
	INSERTED.[Id],
	INSERTED.[Code],
	INSERTED.[Child1Field],
	INSERTED.[Child2Field],
	INSERTED.[Grandchild11Field],
	INSERTED.[Grandchild12Field],
	INSERTED.[Grandchild21Field],
	INSERTED.[Grandchild22Field]
WHERE
	[InheritanceFilter].[Id] = 1

