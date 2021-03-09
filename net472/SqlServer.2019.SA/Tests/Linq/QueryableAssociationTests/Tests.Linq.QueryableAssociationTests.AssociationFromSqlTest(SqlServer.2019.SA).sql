BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

CREATE TABLE [FewNumberEntity]
(
	[Id]     Int NOT NULL,
	[UserId] Int NOT NULL
)

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

CREATE TABLE [LargeNumberEntity]
(
	[Id] Int NOT NULL
)

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

IF (OBJECT_ID(N'[LargeNumberEntity]', N'U') IS NOT NULL)
	DROP TABLE [LargeNumberEntity]

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

IF (OBJECT_ID(N'[FewNumberEntity]', N'U') IS NOT NULL)
	DROP TABLE [FewNumberEntity]

