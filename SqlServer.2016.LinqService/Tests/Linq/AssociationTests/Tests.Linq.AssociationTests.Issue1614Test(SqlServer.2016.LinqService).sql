﻿BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [User]

BeforeExecute
-- SqlServer.2016

IF (OBJECT_ID(N'[User]', N'U') IS NULL)
	CREATE TABLE [User]
	(
		[Id] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [Resource]

BeforeExecute
-- SqlServer.2016

IF (OBJECT_ID(N'[Resource]', N'U') IS NULL)
	CREATE TABLE [Resource]
	(
		[Id]                 Int NOT NULL,
		[AssociatedObjectId] Int NOT NULL,
		[AssociationTypeId]  Int     NULL
	)

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [Lookup]

BeforeExecute
-- SqlServer.2016

IF (OBJECT_ID(N'[Lookup]', N'U') IS NULL)
	CREATE TABLE [Lookup]
	(
		[Id]   Int            NOT NULL,
		[Type] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2016

SELECT
	[t1].[Id],
	[t1].[AssociatedObjectId],
	[t1].[AssociationTypeId],
	[a_User].[Id]
FROM
	[Resource] [t1]
		LEFT JOIN [Lookup] [a_AssociationTypeCode] ON ([t1].[AssociationTypeId] = [a_AssociationTypeCode].[Id] OR [t1].[AssociationTypeId] IS NULL AND [a_AssociationTypeCode].[Id] IS NULL)
		LEFT JOIN [User] [a_User] ON [a_AssociationTypeCode].[Type] = N'us' AND [a_User].[Id] = [t1].[AssociatedObjectId]

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [Lookup]

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [Resource]

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [User]

