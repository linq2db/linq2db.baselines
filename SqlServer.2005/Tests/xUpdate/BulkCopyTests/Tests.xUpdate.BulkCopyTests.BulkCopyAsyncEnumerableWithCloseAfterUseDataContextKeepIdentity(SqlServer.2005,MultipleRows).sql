BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[IdentitySimpleBulkCopyTable]', N'U') IS NOT NULL)
	DROP TABLE [IdentitySimpleBulkCopyTable]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[IdentitySimpleBulkCopyTable]', N'U') IS NULL)
	CREATE TABLE [IdentitySimpleBulkCopyTable]
	(
		[Id] Int  NOT NULL IDENTITY
	)

BeforeExecute
-- SqlServer.2005 (asynchronously)

SET IDENTITY_INSERT [IdentitySimpleBulkCopyTable] ON

BeforeExecute
-- SqlServer.2005 (asynchronously)

INSERT INTO [IdentitySimpleBulkCopyTable]
(
	[Id]
)
SELECT 2

BeforeExecute
-- SqlServer.2005 (asynchronously)

SET IDENTITY_INSERT [IdentitySimpleBulkCopyTable] OFF

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[IdentitySimpleBulkCopyTable]', N'U') IS NOT NULL)
	DROP TABLE [IdentitySimpleBulkCopyTable]

