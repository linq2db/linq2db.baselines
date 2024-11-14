BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [Issue4192TableNotNullable]

BeforeExecute
-- SqlServer.SA SqlServer.2019

IF (OBJECT_ID(N'[Issue4192TableNotNullable]', N'U') IS NULL)
	CREATE TABLE [Issue4192TableNotNullable]
	(
		[Name]     NVarChar(4000)     NULL,
		[ParentId] Int            NOT NULL
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [Issue4192TableNotNullable]

