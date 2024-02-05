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
-- SqlCe (asynchronously)

SET IDENTITY_INSERT [IdentitySimpleBulkCopyTable] ON

BeforeExecute
-- SqlCe (asynchronously)

INSERT INTO [IdentitySimpleBulkCopyTable]
(
	[Id]
)
SELECT 2

BeforeExecute
-- SqlCe (asynchronously)

SET IDENTITY_INSERT [IdentitySimpleBulkCopyTable] OFF

BeforeExecute
-- SqlCe

DROP TABLE [IdentitySimpleBulkCopyTable]

