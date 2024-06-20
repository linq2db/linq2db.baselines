BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [MessageEventDTO]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

IF (OBJECT_ID(N'[MessageEventDTO]', N'U') IS NULL)
	CREATE TABLE [MessageEventDTO]
	(
		[Id] Int NOT NULL,

		CONSTRAINT [PK_MessageEventDTO] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [MessageEventDTOTb2]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

IF (OBJECT_ID(N'[MessageEventDTOTb2]', N'U') IS NULL)
	CREATE TABLE [MessageEventDTOTb2]
	(
		[Id] Int NOT NULL,

		CONSTRAINT [PK_MessageEventDTOTb2] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

INSERT INTO [MessageEventDTOTb2]
(
	[Id]
)
SELECT
	[x].[Id]
FROM
	[MessageEventDTO] [x]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [MessageEventDTOTb2]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [MessageEventDTO]

