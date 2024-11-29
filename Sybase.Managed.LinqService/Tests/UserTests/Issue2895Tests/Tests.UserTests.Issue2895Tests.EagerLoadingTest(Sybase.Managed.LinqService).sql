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
DECLARE @Id Integer -- Int32
SET     @Id = 10
DECLARE @RequestId Integer -- Int32
SET     @RequestId = 1
DECLARE @UserId Integer -- Int32
SET     @UserId = 1

INSERT INTO [InternalEmail]
(
	[Id],
	[RequestId],
	[UserId]
)
VALUES
(
	@Id,
	@RequestId,
	@UserId
)

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
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @UserId Integer -- Int32
SET     @UserId = 1

INSERT INTO [Request]
(
	[Id],
	[UserId]
)
VALUES
(
	@Id,
	@UserId
)

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
DECLARE @Id Integer -- Int32
SET     @Id = 1

INSERT INTO [User]
(
	[Id]
)
VALUES
(
	@Id
)

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
DECLARE @Id Integer -- Int32
SET     @Id = 1

INSERT INTO [Admin]
(
	[Id]
)
VALUES
(
	@Id
)

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
DECLARE @EmailId Integer -- Int32
SET     @EmailId = 10
DECLARE @AdminId Integer -- Int32
SET     @AdminId = 1

INSERT INTO [EmailAdminAssociation]
(
	[EmailId],
	[AdminId]
)
VALUES
(
	@EmailId,
	@AdminId
)

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
DECLARE @Id Integer -- Int32
SET     @Id = 10

INSERT INTO [Email]
(
	[Id]
)
VALUES
(
	@Id
)

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
DECLARE @EmailId Integer -- Int32
SET     @EmailId = 10
DECLARE @AttachmentId Integer -- Int32
SET     @AttachmentId = 100

INSERT INTO [EmailAttachmentAssociation]
(
	[EmailId],
	[AttachmentId]
)
VALUES
(
	@EmailId,
	@AttachmentId
)

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
DECLARE @Id Integer -- Int32
SET     @Id = 100

INSERT INTO [Attachment]
(
	[Id]
)
VALUES
(
	@Id
)

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
DECLARE @AttachmentId Integer -- Int32
SET     @AttachmentId = 100
DECLARE @Position Integer -- Int32
SET     @Position = 1
DECLARE @Name UniVarChar(10) -- String
SET     @Name = 'Some Doc 1'

INSERT INTO [Document]
(
	[AttachmentId],
	[Position],
	[Name]
)
VALUES
(
	@AttachmentId,
	@Position,
	@Name
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @AttachmentId Integer -- Int32
SET     @AttachmentId = 100
DECLARE @Position Integer -- Int32
SET     @Position = 2
DECLARE @Name UniVarChar(10) -- String
SET     @Name = 'Some Doc 2'

INSERT INTO [Document]
(
	[AttachmentId],
	[Position],
	[Name]
)
VALUES
(
	@AttachmentId,
	@Position,
	@Name
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @AttachmentId Integer -- Int32
SET     @AttachmentId = 101
DECLARE @Position Integer -- Int32
SET     @Position = 1
DECLARE @Name UniVarChar(10) -- String
SET     @Name = 'Some Doc x'

INSERT INTO [Document]
(
	[AttachmentId],
	[Position],
	[Name]
)
VALUES
(
	@AttachmentId,
	@Position,
	@Name
)

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

