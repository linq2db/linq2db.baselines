BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [Issue4613Service]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

IF (OBJECT_ID(N'[Issue4613Service]', N'U') IS NULL)
	CREATE TABLE [Issue4613Service]
	(
		[IdContract] Int NOT NULL
	)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [Issue4613Contract]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

IF (OBJECT_ID(N'[Issue4613Contract]', N'U') IS NULL)
	CREATE TABLE [Issue4613Contract]
	(
		[Id] Int NOT NULL
	)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [Issue4613Contract]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [Issue4613Service]

