﻿BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [FewNumberEntity]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

IF (OBJECT_ID(N'[FewNumberEntity]', N'U') IS NULL)
	CREATE TABLE [FewNumberEntity]
	(
		[Id]     Int NOT NULL,
		[UserId] Int NOT NULL
	)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [LargeNumberEntity]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

IF (OBJECT_ID(N'[LargeNumberEntity]', N'U') IS NULL)
	CREATE TABLE [LargeNumberEntity]
	(
		[Id] Int NOT NULL
	)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [LargeNumberEntity]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [FewNumberEntity]

