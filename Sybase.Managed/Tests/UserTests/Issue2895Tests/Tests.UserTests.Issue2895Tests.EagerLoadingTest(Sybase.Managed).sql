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

