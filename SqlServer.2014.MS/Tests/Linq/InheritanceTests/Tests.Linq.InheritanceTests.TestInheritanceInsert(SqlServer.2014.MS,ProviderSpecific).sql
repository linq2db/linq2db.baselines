BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[InheritanceFilter]', N'U') IS NOT NULL)
	DROP TABLE [InheritanceFilter]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[InheritanceFilter]', N'U') IS NULL)
	CREATE TABLE [InheritanceFilter]
	(
		[Id]                Int NOT NULL,
		[Code]              Int NOT NULL,
		[Child1Field]       Int     NULL,
		[Child2Field]       Int     NULL,
		[Grandchild11Field] Int     NULL,
		[Grandchild12Field] Int     NULL,
		[Grandchild21Field] Int     NULL,
		[Grandchild22Field] Int     NULL,

		CONSTRAINT [PK_InheritanceFilter] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
INSERT BULK [InheritanceFilter](Id, Code, Child1Field, Child2Field, Grandchild11Field, Grandchild12Field, Grandchild21Field, Grandchild22Field)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

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

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[InheritanceFilter]', N'U') IS NOT NULL)
	DROP TABLE [InheritanceFilter]

