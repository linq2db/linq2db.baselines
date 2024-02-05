BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [IdentitySimpleBulkCopyTable]

BeforeExecute
-- SqlServer.2022

IF (OBJECT_ID(N'[IdentitySimpleBulkCopyTable]', N'U') IS NULL)
	CREATE TABLE [IdentitySimpleBulkCopyTable]
	(
		[Id] Int  NOT NULL IDENTITY
	)

BeforeExecute
-- SqlServer.2022 (asynchronously)

SET IDENTITY_INSERT [IdentitySimpleBulkCopyTable] ON

BeforeExecute
-- SqlServer.2022 (asynchronously)

INSERT INTO [IdentitySimpleBulkCopyTable]
(
	[Id]
)
VALUES
(2)

BeforeExecute
-- SqlServer.2022 (asynchronously)

SET IDENTITY_INSERT [IdentitySimpleBulkCopyTable] OFF

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [IdentitySimpleBulkCopyTable]

