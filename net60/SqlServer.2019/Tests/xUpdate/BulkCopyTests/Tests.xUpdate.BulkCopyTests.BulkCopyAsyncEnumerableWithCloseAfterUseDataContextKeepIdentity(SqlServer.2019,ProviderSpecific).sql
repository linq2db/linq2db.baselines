BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [IdentitySimpleBulkCopyTable]

BeforeExecute
-- SqlServer.2019

IF (OBJECT_ID(N'[IdentitySimpleBulkCopyTable]', N'U') IS NULL)
	CREATE TABLE [IdentitySimpleBulkCopyTable]
	(
		[Id] Int  NOT NULL IDENTITY
	)

BeforeExecute
INSERT ASYNC BULK [IdentitySimpleBulkCopyTable](Id)

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [IdentitySimpleBulkCopyTable]

