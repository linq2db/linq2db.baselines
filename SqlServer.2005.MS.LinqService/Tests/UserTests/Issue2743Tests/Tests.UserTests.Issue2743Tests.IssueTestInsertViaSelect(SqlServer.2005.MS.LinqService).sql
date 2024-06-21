BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[MessageEventDTO]', N'U') IS NOT NULL)
	DROP TABLE [MessageEventDTO]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[MessageEventDTO]', N'U') IS NULL)
	CREATE TABLE [MessageEventDTO]
	(
		[Id] Int NOT NULL,

		CONSTRAINT [PK_MessageEventDTO] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[MessageEventDTOTb2]', N'U') IS NOT NULL)
	DROP TABLE [MessageEventDTOTb2]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[MessageEventDTOTb2]', N'U') IS NULL)
	CREATE TABLE [MessageEventDTOTb2]
	(
		[Id] Int NOT NULL,

		CONSTRAINT [PK_MessageEventDTOTb2] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [MessageEventDTOTb2]
(
	[Id]
)
SELECT
	[x].[Id]
FROM
	[MessageEventDTO] [x]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[MessageEventDTOTb2]', N'U') IS NOT NULL)
	DROP TABLE [MessageEventDTOTb2]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[MessageEventDTO]', N'U') IS NOT NULL)
	DROP TABLE [MessageEventDTO]

