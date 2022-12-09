﻿BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[InternalEmail]', N'U') IS NOT NULL)
	DROP TABLE [InternalEmail]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[InternalEmail]', N'U') IS NULL)
	CREATE TABLE [InternalEmail]
	(
		[Id]        Int NOT NULL,
		[RequestId] Int     NULL,
		[UserId]    Int     NULL,

		CONSTRAINT [PK_InternalEmail] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

INSERT INTO [InternalEmail]
(
	[Id],
	[RequestId],
	[UserId]
)
VALUES
(10,1,1)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Request]', N'U') IS NOT NULL)
	DROP TABLE [Request]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Request]', N'U') IS NULL)
	CREATE TABLE [Request]
	(
		[Id]     Int NOT NULL,
		[UserId] Int NOT NULL,

		CONSTRAINT [PK_Request] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

INSERT INTO [Request]
(
	[Id],
	[UserId]
)
VALUES
(1,1)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[User]', N'U') IS NOT NULL)
	DROP TABLE [User]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[User]', N'U') IS NULL)
	CREATE TABLE [User]
	(
		[Id] Int NOT NULL,

		CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

INSERT INTO [User]
(
	[Id]
)
VALUES
(1)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Admin]', N'U') IS NOT NULL)
	DROP TABLE [Admin]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Admin]', N'U') IS NULL)
	CREATE TABLE [Admin]
	(
		[Id] Int NOT NULL,

		CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

INSERT INTO [Admin]
(
	[Id]
)
VALUES
(1)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[EmailAdminAssociation]', N'U') IS NOT NULL)
	DROP TABLE [EmailAdminAssociation]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[EmailAdminAssociation]', N'U') IS NULL)
	CREATE TABLE [EmailAdminAssociation]
	(
		[EmailId] Int NOT NULL,
		[AdminId] Int NOT NULL,

		CONSTRAINT [PK_EmailAdminAssociation] PRIMARY KEY CLUSTERED ([EmailId], [AdminId])
	)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

INSERT INTO [EmailAdminAssociation]
(
	[EmailId],
	[AdminId]
)
VALUES
(10,1)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Email]', N'U') IS NOT NULL)
	DROP TABLE [Email]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Email]', N'U') IS NULL)
	CREATE TABLE [Email]
	(
		[Id] Int NOT NULL,

		CONSTRAINT [PK_Email] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

INSERT INTO [Email]
(
	[Id]
)
VALUES
(10)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[EmailAttachmentAssociation]', N'U') IS NOT NULL)
	DROP TABLE [EmailAttachmentAssociation]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[EmailAttachmentAssociation]', N'U') IS NULL)
	CREATE TABLE [EmailAttachmentAssociation]
	(
		[EmailId]      Int NOT NULL,
		[AttachmentId] Int NOT NULL,

		CONSTRAINT [PK_EmailAttachmentAssociation] PRIMARY KEY CLUSTERED ([EmailId], [AttachmentId])
	)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

INSERT INTO [EmailAttachmentAssociation]
(
	[EmailId],
	[AttachmentId]
)
VALUES
(10,100)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Attachment]', N'U') IS NOT NULL)
	DROP TABLE [Attachment]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Attachment]', N'U') IS NULL)
	CREATE TABLE [Attachment]
	(
		[Id] Int NOT NULL,

		CONSTRAINT [PK_Attachment] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

INSERT INTO [Attachment]
(
	[Id]
)
VALUES
(100)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Document]', N'U') IS NOT NULL)
	DROP TABLE [Document]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Document]', N'U') IS NULL)
	CREATE TABLE [Document]
	(
		[AttachmentId] Int            NOT NULL,
		[Position]     Int            NOT NULL,
		[Name]         NVarChar(4000)     NULL,

		CONSTRAINT [PK_Document] PRIMARY KEY CLUSTERED ([AttachmentId], [Position])
	)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

INSERT INTO [Document]
(
	[AttachmentId],
	[Position],
	[Name]
)
VALUES
(100,1,N'Some Doc 1'),
(100,2,N'Some Doc 2'),
(101,1,N'Some Doc x')

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[key_data_result_1].[c1],
	[key_data_result_1].[EmailId],
	[key_data_result_1].[AdminId],
	[key_data_result_1].[c1_1],
	[key_data_result_1].[Id],
	[__c].[Name]
FROM
	(
		SELECT DISTINCT
			[a_Email_1].[Id] as [c1],
			[detail].[EmailId],
			[detail].[AdminId],
			[key_data_result].[c1] as [c1_1],
			[key_data_result].[Id]
		FROM
			(
				SELECT DISTINCT
					[a_Admin].[Id] as [c1],
					[r].[Id]
				FROM
					[Request] [r]
						LEFT JOIN [User] [a_User] ON [r].[UserId] = [a_User].[Id]
						LEFT JOIN [Admin] [a_Admin] ON [a_User].[Id] = [a_Admin].[Id]
			) [key_data_result]
				INNER JOIN [EmailAdminAssociation] [detail]
					LEFT JOIN [Email] [a_Email]
						LEFT JOIN [InternalEmail] [a_InternalEmail] ON [a_Email].[Id] = [a_InternalEmail].[Id]
					ON [detail].[EmailId] = [a_Email].[Id]
				ON [key_data_result].[c1] = [detail].[AdminId]
				LEFT JOIN [Email] [a_Email_1] ON [a_InternalEmail].[Id] = [a_Email_1].[Id]
	) [key_data_result_1]
		INNER JOIN [EmailAttachmentAssociation] [detail_1]
			LEFT JOIN [Attachment] [a_Attachment] ON [detail_1].[AttachmentId] = [a_Attachment].[Id]
		ON [key_data_result_1].[c1] = [detail_1].[EmailId]
		INNER JOIN [Document] [__c] ON [a_Attachment].[Id] = [__c].[AttachmentId]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[key_data_result].[c1],
	[key_data_result].[Id],
	[a_Email_1].[Id],
	[detail].[EmailId],
	[detail].[AdminId]
FROM
	(
		SELECT DISTINCT
			[a_Admin].[Id] as [c1],
			[r].[Id]
		FROM
			[Request] [r]
				LEFT JOIN [User] [a_User] ON [r].[UserId] = [a_User].[Id]
				LEFT JOIN [Admin] [a_Admin] ON [a_User].[Id] = [a_Admin].[Id]
	) [key_data_result]
		INNER JOIN [EmailAdminAssociation] [detail]
			LEFT JOIN [Email] [a_Email]
				LEFT JOIN [InternalEmail] [a_InternalEmail] ON [a_Email].[Id] = [a_InternalEmail].[Id]
			ON [detail].[EmailId] = [a_Email].[Id]
		ON [key_data_result].[c1] = [detail].[AdminId]
		LEFT JOIN [Email] [a_Email_1] ON [a_InternalEmail].[Id] = [a_Email_1].[Id]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[a_Admin].[Id],
	[r].[Id]
FROM
	[Request] [r]
		LEFT JOIN [User] [a_User] ON [r].[UserId] = [a_User].[Id]
		LEFT JOIN [Admin] [a_Admin] ON [a_User].[Id] = [a_Admin].[Id]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Document]', N'U') IS NOT NULL)
	DROP TABLE [Document]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Attachment]', N'U') IS NOT NULL)
	DROP TABLE [Attachment]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[EmailAttachmentAssociation]', N'U') IS NOT NULL)
	DROP TABLE [EmailAttachmentAssociation]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Email]', N'U') IS NOT NULL)
	DROP TABLE [Email]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[EmailAdminAssociation]', N'U') IS NOT NULL)
	DROP TABLE [EmailAdminAssociation]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Admin]', N'U') IS NOT NULL)
	DROP TABLE [Admin]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[User]', N'U') IS NOT NULL)
	DROP TABLE [User]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Request]', N'U') IS NOT NULL)
	DROP TABLE [Request]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[InternalEmail]', N'U') IS NOT NULL)
	DROP TABLE [InternalEmail]

