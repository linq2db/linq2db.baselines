﻿BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[FewNumberEntity]', N'U') IS NOT NULL)
	DROP TABLE [FewNumberEntity]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[FewNumberEntity]', N'U') IS NULL)
	CREATE TABLE [FewNumberEntity]
	(
		[Id]     Int NOT NULL,
		[UserId] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[LargeNumberEntity]', N'U') IS NOT NULL)
	DROP TABLE [LargeNumberEntity]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[LargeNumberEntity]', N'U') IS NULL)
	CREATE TABLE [LargeNumberEntity]
	(
		[Id] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[LargeNumberEntity]', N'U') IS NOT NULL)
	DROP TABLE [LargeNumberEntity]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[FewNumberEntity]', N'U') IS NOT NULL)
	DROP TABLE [FewNumberEntity]

