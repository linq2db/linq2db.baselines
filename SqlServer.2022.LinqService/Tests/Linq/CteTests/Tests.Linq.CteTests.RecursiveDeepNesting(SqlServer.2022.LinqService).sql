BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [HierarchyTree]

BeforeExecute
-- SqlServer.2022

IF (OBJECT_ID(N'[HierarchyTree]', N'U') IS NULL)
	CREATE TABLE [HierarchyTree]
	(
		[Id]       Int NOT NULL,
		[ParentId] Int     NULL
	)

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [HierarchyTree]

