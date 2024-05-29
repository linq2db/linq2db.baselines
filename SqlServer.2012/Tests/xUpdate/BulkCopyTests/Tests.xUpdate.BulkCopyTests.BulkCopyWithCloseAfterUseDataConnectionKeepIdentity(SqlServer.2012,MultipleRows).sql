BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[IdentitySimpleBulkCopyTable]', N'U') IS NOT NULL)
	DROP TABLE [IdentitySimpleBulkCopyTable]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[IdentitySimpleBulkCopyTable]', N'U') IS NULL)
	CREATE TABLE [IdentitySimpleBulkCopyTable]
	(
		[Id] Int  NOT NULL IDENTITY
	)

BeforeExecute
-- SqlServer.2012

SET IDENTITY_INSERT [IdentitySimpleBulkCopyTable] ON

BeforeExecute
-- SqlServer.2012

INSERT INTO [IdentitySimpleBulkCopyTable]
(
	[Id]
)
VALUES
(1)

BeforeExecute
-- SqlServer.2012

SET IDENTITY_INSERT [IdentitySimpleBulkCopyTable] OFF

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[IdentitySimpleBulkCopyTable]', N'U') IS NOT NULL)
	DROP TABLE [IdentitySimpleBulkCopyTable]

