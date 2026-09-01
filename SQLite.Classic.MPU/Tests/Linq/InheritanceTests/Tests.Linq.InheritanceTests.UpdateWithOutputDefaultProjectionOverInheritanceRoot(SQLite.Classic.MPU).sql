-- SQLite.Classic.MPU SQLite.Classic SQLite
UPDATE
	[InheritanceFilter]
SET
	[Id] = [InheritanceFilter].[Id],
	[Code] = [InheritanceFilter].[Code]
WHERE
	[InheritanceFilter].[Id] = 1
RETURNING
	[InheritanceFilter].[Id],
	[InheritanceFilter].[Code],
	[InheritanceFilter].[Child1Field],
	[InheritanceFilter].[Child2Field],
	[InheritanceFilter].[Grandchild11Field],
	[InheritanceFilter].[Grandchild12Field],
	[InheritanceFilter].[Grandchild21Field],
	[InheritanceFilter].[Grandchild22Field],
	[InheritanceFilter].[Id],
	[InheritanceFilter].[Code],
	[InheritanceFilter].[Child1Field],
	[InheritanceFilter].[Child2Field],
	[InheritanceFilter].[Grandchild11Field],
	[InheritanceFilter].[Grandchild12Field],
	[InheritanceFilter].[Grandchild21Field],
	[InheritanceFilter].[Grandchild22Field]

