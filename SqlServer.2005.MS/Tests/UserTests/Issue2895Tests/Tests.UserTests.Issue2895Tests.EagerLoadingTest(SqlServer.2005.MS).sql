﻿BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[InternalEmail]', N'U') IS NOT NULL)
	DROP TABLE [InternalEmail]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[InternalEmail]', N'U') IS NULL)
	CREATE TABLE [InternalEmail]
	(
		[Id]        Int NOT NULL,
		[RequestId] Int     NULL,
		[UserId]    Int     NULL,

		CONSTRAINT [PK_InternalEmail] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [InternalEmail]
(
	[Id],
	[RequestId],
	[UserId]
)
SELECT 10,1,1

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Request]', N'U') IS NOT NULL)
	DROP TABLE [Request]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Request]', N'U') IS NULL)
	CREATE TABLE [Request]
	(
		[Id]     Int NOT NULL,
		[UserId] Int NOT NULL,

		CONSTRAINT [PK_Request] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [Request]
(
	[Id],
	[UserId]
)
SELECT 1,1

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[User]', N'U') IS NOT NULL)
	DROP TABLE [User]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[User]', N'U') IS NULL)
	CREATE TABLE [User]
	(
		[Id] Int NOT NULL,

		CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [User]
(
	[Id]
)
SELECT 1

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Admin]', N'U') IS NOT NULL)
	DROP TABLE [Admin]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Admin]', N'U') IS NULL)
	CREATE TABLE [Admin]
	(
		[Id] Int NOT NULL,

		CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [Admin]
(
	[Id]
)
SELECT 1

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[EmailAdminAssociation]', N'U') IS NOT NULL)
	DROP TABLE [EmailAdminAssociation]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[EmailAdminAssociation]', N'U') IS NULL)
	CREATE TABLE [EmailAdminAssociation]
	(
		[EmailId] Int NOT NULL,
		[AdminId] Int NOT NULL,

		CONSTRAINT [PK_EmailAdminAssociation] PRIMARY KEY CLUSTERED ([EmailId], [AdminId])
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [EmailAdminAssociation]
(
	[EmailId],
	[AdminId]
)
SELECT 10,1

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Email]', N'U') IS NOT NULL)
	DROP TABLE [Email]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Email]', N'U') IS NULL)
	CREATE TABLE [Email]
	(
		[Id] Int NOT NULL,

		CONSTRAINT [PK_Email] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [Email]
(
	[Id]
)
SELECT 10

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[EmailAttachmentAssociation]', N'U') IS NOT NULL)
	DROP TABLE [EmailAttachmentAssociation]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[EmailAttachmentAssociation]', N'U') IS NULL)
	CREATE TABLE [EmailAttachmentAssociation]
	(
		[EmailId]      Int NOT NULL,
		[AttachmentId] Int NOT NULL,

		CONSTRAINT [PK_EmailAttachmentAssociation] PRIMARY KEY CLUSTERED ([EmailId], [AttachmentId])
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [EmailAttachmentAssociation]
(
	[EmailId],
	[AttachmentId]
)
SELECT 10,100

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Attachment]', N'U') IS NOT NULL)
	DROP TABLE [Attachment]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Attachment]', N'U') IS NULL)
	CREATE TABLE [Attachment]
	(
		[Id] Int NOT NULL,

		CONSTRAINT [PK_Attachment] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [Attachment]
(
	[Id]
)
SELECT 100

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Document]', N'U') IS NOT NULL)
	DROP TABLE [Document]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Document]', N'U') IS NULL)
	CREATE TABLE [Document]
	(
		[AttachmentId] Int            NOT NULL,
		[Position]     Int            NOT NULL,
		[Name]         NVarChar(4000)     NULL,

		CONSTRAINT [PK_Document] PRIMARY KEY CLUSTERED ([AttachmentId], [Position])
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [Document]
(
	[AttachmentId],
	[Position],
	[Name]
)
SELECT 100,1,N'Some Doc 1' UNION ALL
SELECT 100,2,N'Some Doc 2' UNION ALL
SELECT 101,1,N'Some Doc x'

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[m_1].[Id],
	[a_Documents].[Name]
FROM
	(
		SELECT DISTINCT
			[t1].[Id]
		FROM
			[Request] [r]
				LEFT JOIN [User] [a_User] ON [r].[UserId] = [a_User].[Id]
				LEFT JOIN [Admin] [a_Admin] ON [a_User].[Id] = [a_Admin].[Id]
				OUTER APPLY (
					SELECT TOP (1)
						[a_Email_1].[Id]
					FROM
						[EmailAdminAssociation] [a_EmailAdminAssociations]
							LEFT JOIN [Email] [a_Email] ON [a_EmailAdminAssociations].[EmailId] = [a_Email].[Id]
							LEFT JOIN [InternalEmail] [a_InternalEmail] ON [a_Email].[Id] = [a_InternalEmail].[Id]
							LEFT JOIN [Email] [a_Email_1] ON [a_InternalEmail].[Id] = [a_Email_1].[Id]
					WHERE
						[a_Admin].[Id] = [a_EmailAdminAssociations].[AdminId]
				) [t1]
	) [m_1]
		INNER JOIN [EmailAttachmentAssociation] [d] ON [m_1].[Id] = [d].[EmailId]
		LEFT JOIN [Attachment] [a_Attachment] ON [d].[AttachmentId] = [a_Attachment].[Id]
		INNER JOIN [Document] [a_Documents] ON [a_Attachment].[Id] = [a_Documents].[AttachmentId]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t1].[cond],
	[t1].[Id]
FROM
	[Request] [r]
		LEFT JOIN [User] [a_User] ON [r].[UserId] = [a_User].[Id]
		LEFT JOIN [Admin] [a_Admin] ON [a_User].[Id] = [a_Admin].[Id]
		OUTER APPLY (
			SELECT TOP (1)
				1 as [cond],
				[a_Email_1].[Id]
			FROM
				[EmailAdminAssociation] [a_EmailAdminAssociations]
					LEFT JOIN [Email] [a_Email] ON [a_EmailAdminAssociations].[EmailId] = [a_Email].[Id]
					LEFT JOIN [InternalEmail] [a_InternalEmail] ON [a_Email].[Id] = [a_InternalEmail].[Id]
					LEFT JOIN [Email] [a_Email_1] ON [a_InternalEmail].[Id] = [a_Email_1].[Id]
			WHERE
				[a_Admin].[Id] = [a_EmailAdminAssociations].[AdminId]
		) [t1]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Document]', N'U') IS NOT NULL)
	DROP TABLE [Document]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Attachment]', N'U') IS NOT NULL)
	DROP TABLE [Attachment]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[EmailAttachmentAssociation]', N'U') IS NOT NULL)
	DROP TABLE [EmailAttachmentAssociation]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Email]', N'U') IS NOT NULL)
	DROP TABLE [Email]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[EmailAdminAssociation]', N'U') IS NOT NULL)
	DROP TABLE [EmailAdminAssociation]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Admin]', N'U') IS NOT NULL)
	DROP TABLE [Admin]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[User]', N'U') IS NOT NULL)
	DROP TABLE [User]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Request]', N'U') IS NOT NULL)
	DROP TABLE [Request]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[InternalEmail]', N'U') IS NOT NULL)
	DROP TABLE [InternalEmail]

