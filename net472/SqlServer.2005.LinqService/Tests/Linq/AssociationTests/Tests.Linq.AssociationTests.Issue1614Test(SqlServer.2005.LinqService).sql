BeforeExecute
-- SqlServer.2005

CREATE TABLE [User]
(
	[Id] Int NOT NULL
)

BeforeExecute
-- SqlServer.2005

CREATE TABLE [Resource]
(
	[Id]                 Int NOT NULL,
	[AssociatedObjectId] Int NOT NULL,
	[AssociationTypeId]  Int     NULL
)

BeforeExecute
-- SqlServer.2005

CREATE TABLE [Lookup]
(
	[Id]   Int            NOT NULL,
	[Type] NVarChar(4000)     NULL
)

BeforeExecute
-- SqlServer.2005

DROP TABLE [Lookup]

BeforeExecute
-- SqlServer.2005

DROP TABLE [Resource]

BeforeExecute
-- SqlServer.2005

DROP TABLE [User]

