﻿BeforeExecute
-- SqlServer.2008

CREATE TABLE [HierarchyTree]
(
	[Id]       Int NOT NULL,
	[ParentId] Int     NULL
)

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[HierarchyTree]', N'U') IS NOT NULL)
	DROP TABLE [HierarchyTree]

