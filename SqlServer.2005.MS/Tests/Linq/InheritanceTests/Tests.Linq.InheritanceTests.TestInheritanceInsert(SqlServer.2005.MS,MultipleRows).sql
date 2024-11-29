﻿BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[InheritanceFilter]', N'U') IS NOT NULL)
	DROP TABLE [InheritanceFilter]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

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
-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [InheritanceFilter]
(
	[Id],
	[Code],
	[Child1Field],
	[Child2Field],
	[Grandchild11Field],
	[Grandchild12Field],
	[Grandchild21Field],
	[Grandchild22Field]
)
SELECT 1,1,11,0,0,0,0,0 UNION ALL
SELECT 2,2,0,12,0,0,0,0 UNION ALL
SELECT 3,11,23,0,13,0,0,0 UNION ALL
SELECT 4,12,24,0,0,14,0,0 UNION ALL
SELECT 5,21,0,25,0,0,15,0 UNION ALL
SELECT 6,22,0,26,0,0,0,16

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

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
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[InheritanceFilter]', N'U') IS NOT NULL)
	DROP TABLE [InheritanceFilter]

