﻿BeforeExecute
-- SqlCe

DROP TABLE [User]

BeforeExecute
-- SqlCe

CREATE TABLE [User]
(
	[Id] Int NOT NULL
)

BeforeExecute
-- SqlCe

DROP TABLE [Resource]

BeforeExecute
-- SqlCe

CREATE TABLE [Resource]
(
	[Id]                 Int NOT NULL,
	[AssociatedObjectId] Int NOT NULL,
	[AssociationTypeId]  Int     NULL
)

BeforeExecute
-- SqlCe

DROP TABLE [Lookup]

BeforeExecute
-- SqlCe

CREATE TABLE [Lookup]
(
	[Id]   Int           NOT NULL,
	[Type] NVarChar(255)     NULL
)

BeforeExecute
-- SqlCe

SELECT
	[t1].[Id],
	[t1].[AssociatedObjectId],
	[t1].[AssociationTypeId],
	[c_1].[Id]
FROM
	[Resource] [t1]
		LEFT JOIN [Lookup] [a_AssociationTypeCode] ON [t1].[AssociationTypeId] = [a_AssociationTypeCode].[Id]
		LEFT JOIN [User] [c_1] ON [a_AssociationTypeCode].[Type] = 'us' AND [c_1].[Id] = [t1].[AssociatedObjectId]

BeforeExecute
-- SqlCe

DROP TABLE [Lookup]

BeforeExecute
-- SqlCe

DROP TABLE [Resource]

BeforeExecute
-- SqlCe

DROP TABLE [User]

