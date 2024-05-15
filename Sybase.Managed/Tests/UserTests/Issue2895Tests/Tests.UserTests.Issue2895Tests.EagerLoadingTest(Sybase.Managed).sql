BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'InternalEmail') IS NOT NULL)
	DROP TABLE [InternalEmail]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'InternalEmail') IS NULL)
	EXECUTE('
		CREATE TABLE [InternalEmail]
		(
			[Id]        Int NOT NULL,
			[RequestId] Int     NULL,
			[UserId]    Int     NULL,

			CONSTRAINT [PK_InternalEmail] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [InternalEmail]
(
	[Id],
	[RequestId],
	[UserId]
)
SELECT 10,1,1

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Request') IS NOT NULL)
	DROP TABLE [Request]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Request') IS NULL)
	EXECUTE('
		CREATE TABLE [Request]
		(
			[Id]     Int NOT NULL,
			[UserId] Int NOT NULL,

			CONSTRAINT [PK_Request] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [Request]
(
	[Id],
	[UserId]
)
SELECT 1,1

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'User') IS NOT NULL)
	DROP TABLE [User]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'User') IS NULL)
	EXECUTE('
		CREATE TABLE [User]
		(
			[Id] Int NOT NULL,

			CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [User]
(
	[Id]
)
SELECT 1

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Admin') IS NOT NULL)
	DROP TABLE [Admin]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Admin') IS NULL)
	EXECUTE('
		CREATE TABLE [Admin]
		(
			[Id] Int NOT NULL,

			CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [Admin]
(
	[Id]
)
SELECT 1

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'EmailAdminAssociation') IS NOT NULL)
	DROP TABLE [EmailAdminAssociation]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'EmailAdminAssociation') IS NULL)
	EXECUTE('
		CREATE TABLE [EmailAdminAssociation]
		(
			[EmailId] Int NOT NULL,
			[AdminId] Int NOT NULL,

			CONSTRAINT [PK_EmailAdminAssociation] PRIMARY KEY CLUSTERED ([EmailId], [AdminId])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [EmailAdminAssociation]
(
	[EmailId],
	[AdminId]
)
SELECT 10,1

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Email') IS NOT NULL)
	DROP TABLE [Email]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Email') IS NULL)
	EXECUTE('
		CREATE TABLE [Email]
		(
			[Id] Int NOT NULL,

			CONSTRAINT [PK_Email] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [Email]
(
	[Id]
)
SELECT 10

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'EmailAttachmentAssociation') IS NOT NULL)
	DROP TABLE [EmailAttachmentAssociation]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'EmailAttachmentAssociation') IS NULL)
	EXECUTE('
		CREATE TABLE [EmailAttachmentAssociation]
		(
			[EmailId]      Int NOT NULL,
			[AttachmentId] Int NOT NULL,

			CONSTRAINT PK_EmailAttachmentAssociation PRIMARY KEY CLUSTERED ([EmailId], [AttachmentId])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [EmailAttachmentAssociation]
(
	[EmailId],
	[AttachmentId]
)
SELECT 10,100

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Attachment') IS NOT NULL)
	DROP TABLE [Attachment]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Attachment') IS NULL)
	EXECUTE('
		CREATE TABLE [Attachment]
		(
			[Id] Int NOT NULL,

			CONSTRAINT [PK_Attachment] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [Attachment]
(
	[Id]
)
SELECT 100

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Document') IS NOT NULL)
	DROP TABLE [Document]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Document') IS NULL)
	EXECUTE('
		CREATE TABLE [Document]
		(
			[AttachmentId] Int           NOT NULL,
			[Position]     Int           NOT NULL,
			[Name]         NVarChar(255)     NULL,

			CONSTRAINT [PK_Document] PRIMARY KEY CLUSTERED ([AttachmentId], [Position])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [Document]
(
	[AttachmentId],
	[Position],
	[Name]
)
SELECT 100,1,'Some Doc 1' UNION ALL
SELECT 100,2,'Some Doc 2' UNION ALL
SELECT 101,1,'Some Doc x'

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[m_1].[Id],
	[m_1].[Id_1],
	[a_Documents].[Name]
FROM
	(
		SELECT DISTINCT
			[a_Email_1].[Id],
			[t1].[Id] as [Id_1]
		FROM
			(
				SELECT DISTINCT
					[a_Admin].[Id]
				FROM
					[Request] [r]
						LEFT JOIN [User] [a_User] ON [r].[UserId] = [a_User].[Id]
						LEFT JOIN [Admin] [a_Admin] ON [a_User].[Id] = [a_Admin].[Id]
			) [t1]
				INNER JOIN [EmailAdminAssociation] [d] ON [t1].[Id] IS NOT NULL AND [t1].[Id] = [d].[AdminId]
				LEFT JOIN [Email] [a_Email] ON [d].[EmailId] = [a_Email].[Id]
				LEFT JOIN [InternalEmail] [a_InternalEmail] ON [a_Email].[Id] = [a_InternalEmail].[Id]
				LEFT JOIN [Email] [a_Email_1] ON [a_InternalEmail].[Id] = [a_Email_1].[Id]
	) [m_1]
		INNER JOIN [EmailAttachmentAssociation] [d_1] ON [m_1].[Id] IS NOT NULL AND [m_1].[Id] = [d_1].[EmailId]
		LEFT JOIN [Attachment] [a_Attachment] ON [d_1].[AttachmentId] = [a_Attachment].[Id]
		INNER JOIN [Document] [a_Documents] ON [a_Attachment].[Id] IS NOT NULL AND [a_Attachment].[Id] = [a_Documents].[AttachmentId]

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[m_1].[Id],
	[a_Email_1].[Id]
FROM
	(
		SELECT DISTINCT
			[a_Admin].[Id]
		FROM
			[Request] [r]
				LEFT JOIN [User] [a_User] ON [r].[UserId] = [a_User].[Id]
				LEFT JOIN [Admin] [a_Admin] ON [a_User].[Id] = [a_Admin].[Id]
	) [m_1]
		INNER JOIN [EmailAdminAssociation] [d] ON [m_1].[Id] IS NOT NULL AND [m_1].[Id] = [d].[AdminId]
		LEFT JOIN [Email] [a_Email] ON [d].[EmailId] = [a_Email].[Id]
		LEFT JOIN [InternalEmail] [a_InternalEmail] ON [a_Email].[Id] = [a_InternalEmail].[Id]
		LEFT JOIN [Email] [a_Email_1] ON [a_InternalEmail].[Id] = [a_Email_1].[Id]

BeforeExecute
DisposeTransaction
BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[a_Admin].[Id]
FROM
	[Request] [r]
		LEFT JOIN [User] [a_User] ON [r].[UserId] = [a_User].[Id]
		LEFT JOIN [Admin] [a_Admin] ON [a_User].[Id] = [a_Admin].[Id]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Document') IS NOT NULL)
	DROP TABLE [Document]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Attachment') IS NOT NULL)
	DROP TABLE [Attachment]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'EmailAttachmentAssociation') IS NOT NULL)
	DROP TABLE [EmailAttachmentAssociation]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Email') IS NOT NULL)
	DROP TABLE [Email]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'EmailAdminAssociation') IS NOT NULL)
	DROP TABLE [EmailAdminAssociation]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Admin') IS NOT NULL)
	DROP TABLE [Admin]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'User') IS NOT NULL)
	DROP TABLE [User]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Request') IS NOT NULL)
	DROP TABLE [Request]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'InternalEmail') IS NOT NULL)
	DROP TABLE [InternalEmail]

