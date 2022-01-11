﻿BeforeExecute
-- SqlServer.2019.SA SqlServer.2019

CREATE TABLE [User]
(
	[Id] Int NOT NULL
)

BeforeExecute
-- SqlServer.2019.SA SqlServer.2019

CREATE TABLE [Resource]
(
	[Id]                 Int NOT NULL,
	[AssociatedObjectId] Int NOT NULL,
	[AssociationTypeId]  Int     NULL
)

BeforeExecute
-- SqlServer.2019.SA SqlServer.2019

CREATE TABLE [Lookup]
(
	[Id]   Int            NOT NULL,
	[Type] NVarChar(4000)     NULL
)

BeforeExecute
-- SqlServer.2019.SA SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[AssociatedObjectId],
	[t1].[AssociationTypeId],
	[c_1].[Id]
FROM
	[Resource] [t1]
		LEFT JOIN [Lookup] [a_AssociationTypeCode] ON [t1].[AssociationTypeId] = [a_AssociationTypeCode].[Id]
		LEFT JOIN [User] [c_1] ON [a_AssociationTypeCode].[Type] = N'us' AND [c_1].[Id] = [t1].[AssociatedObjectId]

BeforeExecute
-- SqlServer.2019.SA SqlServer.2019

DROP TABLE IF EXISTS [Lookup]

BeforeExecute
-- SqlServer.2019.SA SqlServer.2019

DROP TABLE IF EXISTS [Resource]

BeforeExecute
-- SqlServer.2019.SA SqlServer.2019

DROP TABLE IF EXISTS [User]

