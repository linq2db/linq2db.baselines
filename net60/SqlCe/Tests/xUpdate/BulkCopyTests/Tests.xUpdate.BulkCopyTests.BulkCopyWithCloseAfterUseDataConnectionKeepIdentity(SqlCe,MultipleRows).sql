BeforeExecute
-- SqlCe

DROP TABLE [IdentitySimpleBulkCopyTable]

BeforeExecute
-- SqlCe

CREATE TABLE [IdentitySimpleBulkCopyTable]
(
	[Id] Int  NOT NULL IDENTITY
)

BeforeExecute
-- SqlCe

SET IDENTITY_INSERT [IdentitySimpleBulkCopyTable] ON

BeforeExecute
-- SqlCe

INSERT INTO [IdentitySimpleBulkCopyTable]
(
	[Id]
)
SELECT 1

BeforeExecute
-- SqlCe

SET IDENTITY_INSERT [IdentitySimpleBulkCopyTable] OFF

BeforeExecute
-- SqlCe

DROP TABLE [IdentitySimpleBulkCopyTable]

