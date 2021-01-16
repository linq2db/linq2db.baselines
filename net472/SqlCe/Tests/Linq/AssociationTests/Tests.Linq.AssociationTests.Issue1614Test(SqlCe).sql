BeforeExecute
-- SqlCe

CREATE TABLE [User]
(
	[Id] Int NOT NULL
)

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

CREATE TABLE [Lookup]
(
	[Id]   Int           NOT NULL,
	[Type] NVarChar(255)     NULL
)

BeforeExecute
-- SqlCe

DROP TABLE [Lookup]

BeforeExecute
-- SqlCe

DROP TABLE [Resource]

BeforeExecute
-- SqlCe

DROP TABLE [User]

