BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [InternalEmail]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [InternalEmail]
(
	[Id]        Int NOT NULL,
	[RequestId] Int     NULL,
	[UserId]    Int     NULL,

	CONSTRAINT [PK_InternalEmail] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 10
DECLARE @RequestId Int -- Int32
SET     @RequestId = 1
DECLARE @UserId Int -- Int32
SET     @UserId = 1

INSERT INTO [InternalEmail]
(
	[Id],
	[RequestId],
	[UserId]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [Request]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [Request]
(
	[Id]     Int NOT NULL,
	[UserId] Int NOT NULL,

	CONSTRAINT [PK_Request] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @UserId Int -- Int32
SET     @UserId = 1

INSERT INTO [Request]
(
	[Id],
	[UserId]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [User]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [User]
(
	[Id] Int NOT NULL,

	CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1

INSERT INTO [User]
(
	[Id]
)
VALUES
(
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [Admin]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [Admin]
(
	[Id] Int NOT NULL,

	CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1

INSERT INTO [Admin]
(
	[Id]
)
VALUES
(
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [EmailAdminAssociation]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [EmailAdminAssociation]
(
	[EmailId] Int NOT NULL,
	[AdminId] Int NOT NULL,

	CONSTRAINT [PK_EmailAdminAssociation] PRIMARY KEY CLUSTERED ([EmailId], [AdminId])
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @EmailId Int -- Int32
SET     @EmailId = 10
DECLARE @AdminId Int -- Int32
SET     @AdminId = 1

INSERT INTO [EmailAdminAssociation]
(
	[EmailId],
	[AdminId]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [Email]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [Email]
(
	[Id] Int NOT NULL,

	CONSTRAINT [PK_Email] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 10

INSERT INTO [Email]
(
	[Id]
)
VALUES
(
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [EmailAttachmentAssociation]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [EmailAttachmentAssociation]
(
	[EmailId]      Int NOT NULL,
	[AttachmentId] Int NOT NULL,

	CONSTRAINT [PK_EmailAttachmentAssociation] PRIMARY KEY CLUSTERED ([EmailId], [AttachmentId])
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @EmailId Int -- Int32
SET     @EmailId = 10
DECLARE @AttachmentId Int -- Int32
SET     @AttachmentId = 100

INSERT INTO [EmailAttachmentAssociation]
(
	[EmailId],
	[AttachmentId]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [Attachment]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [Attachment]
(
	[Id] Int NOT NULL,

	CONSTRAINT [PK_Attachment] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 100

INSERT INTO [Attachment]
(
	[Id]
)
VALUES
(
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [Document]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [Document]
(
	[AttachmentId] Int           NOT NULL,
	[Position]     Int           NOT NULL,
	[Name]         NVarChar(255)     NULL,

	CONSTRAINT [PK_Document] PRIMARY KEY CLUSTERED ([AttachmentId], [Position])
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @AttachmentId Int -- Int32
SET     @AttachmentId = 100
DECLARE @Position Int -- Int32
SET     @Position = 1
DECLARE @Name NVarChar(10) -- String
SET     @Name = 'Some Doc 1'

INSERT INTO [Document]
(
	[AttachmentId],
	[Position],
	[Name]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @AttachmentId Int -- Int32
SET     @AttachmentId = 100
DECLARE @Position Int -- Int32
SET     @Position = 2
DECLARE @Name NVarChar(10) -- String
SET     @Name = 'Some Doc 2'

INSERT INTO [Document]
(
	[AttachmentId],
	[Position],
	[Name]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @AttachmentId Int -- Int32
SET     @AttachmentId = 101
DECLARE @Position Int -- Int32
SET     @Position = 1
DECLARE @Name NVarChar(10) -- String
SET     @Name = 'Some Doc x'

INSERT INTO [Document]
(
	[AttachmentId],
	[Position],
	[Name]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [Document]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [Attachment]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [EmailAttachmentAssociation]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [Email]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [EmailAdminAssociation]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [Admin]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [User]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [Request]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [InternalEmail]

