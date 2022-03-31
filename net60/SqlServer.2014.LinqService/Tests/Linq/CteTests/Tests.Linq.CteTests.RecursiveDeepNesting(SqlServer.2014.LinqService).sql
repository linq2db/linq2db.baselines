BeforeExecute
-- SqlServer.2014

CREATE TABLE [HierarchyTree]
(
	[Id]       Int NOT NULL,
	[ParentId] Int     NULL
)

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[HierarchyTree]', N'U') IS NOT NULL)
	DROP TABLE [HierarchyTree]

