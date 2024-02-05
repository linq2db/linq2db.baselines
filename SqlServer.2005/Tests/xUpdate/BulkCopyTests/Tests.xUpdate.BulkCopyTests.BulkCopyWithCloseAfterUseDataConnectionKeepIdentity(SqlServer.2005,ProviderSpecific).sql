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
INSERT BULK [IdentitySimpleBulkCopyTable](Id)

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[IdentitySimpleBulkCopyTable]', N'U') IS NOT NULL)
	DROP TABLE [IdentitySimpleBulkCopyTable]

