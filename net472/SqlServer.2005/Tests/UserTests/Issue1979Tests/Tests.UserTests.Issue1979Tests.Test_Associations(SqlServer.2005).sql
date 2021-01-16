BeforeExecute
-- SqlServer.2005

CREATE TABLE [Tag]
(
	[Id]   BigInt         NOT NULL,
	[Name] NVarChar(4000)     NULL
)

BeforeExecute
-- SqlServer.2005

CREATE TABLE [Tagging]
(
	[Id]           BigInt         NOT NULL,
	[TagId]        Int            NOT NULL,
	[TaggableId]   Int            NOT NULL,
	[TaggableType] NVarChar(4000)     NULL,

	CONSTRAINT [PK_Tagging] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2005

CREATE TABLE [Issue]
(
	[Id] Int NOT NULL,

	CONSTRAINT [PK_Issue] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2005

DROP TABLE [Issue]

BeforeExecute
-- SqlServer.2005

DROP TABLE [Tagging]

BeforeExecute
-- SqlServer.2005

DROP TABLE [Tag]

