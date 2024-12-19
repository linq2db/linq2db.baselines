BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [InternalEmail]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [InternalEmail]
(
	[Id]        Int NOT NULL,
	[RequestId] Int     NULL,
	[UserId]    Int     NULL,

	CONSTRAINT [PK_InternalEmail] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
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
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [Request]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [Request]
(
	[Id]     Int NOT NULL,
	[UserId] Int NOT NULL,

	CONSTRAINT [PK_Request] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
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
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [User]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [User]
(
	[Id] Int NOT NULL,

	CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
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
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [Admin]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [Admin]
(
	[Id] Int NOT NULL,

	CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
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
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [EmailAdminAssociation]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [EmailAdminAssociation]
(
	[EmailId] Int NOT NULL,
	[AdminId] Int NOT NULL,

	CONSTRAINT [PK_EmailAdminAssociation] PRIMARY KEY CLUSTERED ([EmailId], [AdminId])
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
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
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [Email]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [Email]
(
	[Id] Int NOT NULL,

	CONSTRAINT [PK_Email] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
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
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [EmailAttachmentAssociation]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [EmailAttachmentAssociation]
(
	[EmailId]      Int NOT NULL,
	[AttachmentId] Int NOT NULL,

	CONSTRAINT [PK_EmailAttachmentAssociation] PRIMARY KEY CLUSTERED ([EmailId], [AttachmentId])
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
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
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [Attachment]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [Attachment]
(
	[Id] Int NOT NULL,

	CONSTRAINT [PK_Attachment] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
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
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [Document]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [Document]
(
	[AttachmentId] Int           NOT NULL,
	[Position]     Int           NOT NULL,
	[Name]         NVarChar(255)     NULL,

	CONSTRAINT [PK_Document] PRIMARY KEY CLUSTERED ([AttachmentId], [Position])
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @AttachmentId Integer -- Int32
SET     @AttachmentId = 100
DECLARE @Position Integer -- Int32
SET     @Position = 1
DECLARE @Name VarWChar(10) -- String
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
-- Access.Ace.OleDb AccessOleDb
DECLARE @AttachmentId Integer -- Int32
SET     @AttachmentId = 100
DECLARE @Position Integer -- Int32
SET     @Position = 2
DECLARE @Name VarWChar(10) -- String
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
-- Access.Ace.OleDb AccessOleDb
DECLARE @AttachmentId Integer -- Int32
SET     @AttachmentId = 101
DECLARE @Position Integer -- Int32
SET     @Position = 1
DECLARE @Name VarWChar(10) -- String
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
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [Document]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [Attachment]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [EmailAttachmentAssociation]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [Email]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [EmailAdminAssociation]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [Admin]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [User]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [Request]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [InternalEmail]

