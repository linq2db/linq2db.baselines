BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [HierarchyTree]

BeforeExecute
-- SqlServer.SA SqlServer.2019

IF (OBJECT_ID(N'[HierarchyTree]', N'U') IS NULL)
	CREATE TABLE [HierarchyTree]
	(
		[Id]       Int NOT NULL,
		[ParentId] Int     NULL
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [HierarchyTree]

