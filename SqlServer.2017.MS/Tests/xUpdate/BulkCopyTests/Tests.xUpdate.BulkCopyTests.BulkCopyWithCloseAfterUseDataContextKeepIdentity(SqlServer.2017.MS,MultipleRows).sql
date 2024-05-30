BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [IdentitySimpleBulkCopyTable]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

IF (OBJECT_ID(N'[IdentitySimpleBulkCopyTable]', N'U') IS NULL)
	CREATE TABLE [IdentitySimpleBulkCopyTable]
	(
		[Id] Int  NOT NULL IDENTITY
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SET IDENTITY_INSERT [IdentitySimpleBulkCopyTable] ON

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

INSERT INTO [IdentitySimpleBulkCopyTable]
(
	[Id]
)
VALUES
(1)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SET IDENTITY_INSERT [IdentitySimpleBulkCopyTable] OFF

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [IdentitySimpleBulkCopyTable]

