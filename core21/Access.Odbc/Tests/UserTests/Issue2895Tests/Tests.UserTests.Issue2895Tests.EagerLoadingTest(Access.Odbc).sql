BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [InternalEmail]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [InternalEmail]
(
	[Id]        Int NOT NULL,
	[RequestId] Int     NULL,
	[UserId]    Int     NULL,

	CONSTRAINT [PK_InternalEmail] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Odbc AccessODBC
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
-- Access.Odbc AccessODBC

DROP TABLE [Request]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [Request]
(
	[Id]     Int NOT NULL,
	[UserId] Int NOT NULL,

	CONSTRAINT [PK_Request] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Odbc AccessODBC
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
-- Access.Odbc AccessODBC

DROP TABLE [User]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [User]
(
	[Id] Int NOT NULL,

	CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Odbc AccessODBC
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
-- Access.Odbc AccessODBC

DROP TABLE [Admin]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [Admin]
(
	[Id] Int NOT NULL,

	CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Odbc AccessODBC
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
-- Access.Odbc AccessODBC

DROP TABLE [EmailAdminAssociation]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [EmailAdminAssociation]
(
	[EmailId] Int NOT NULL,
	[AdminId] Int NOT NULL,

	CONSTRAINT [PK_EmailAdminAssociation] PRIMARY KEY CLUSTERED ([EmailId], [AdminId])
)

BeforeExecute
-- Access.Odbc AccessODBC
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
-- Access.Odbc AccessODBC

DROP TABLE [Email]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [Email]
(
	[Id] Int NOT NULL,

	CONSTRAINT [PK_Email] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Odbc AccessODBC
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
-- Access.Odbc AccessODBC

DROP TABLE [EmailAttachmentAssociation]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [EmailAttachmentAssociation]
(
	[EmailId]      Int NOT NULL,
	[AttachmentId] Int NOT NULL,

	CONSTRAINT [PK_EmailAttachmentAssociation] PRIMARY KEY CLUSTERED ([EmailId], [AttachmentId])
)

BeforeExecute
-- Access.Odbc AccessODBC
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
-- Access.Odbc AccessODBC

DROP TABLE [Attachment]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [Attachment]
(
	[Id] Int NOT NULL,

	CONSTRAINT [PK_Attachment] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Odbc AccessODBC
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
-- Access.Odbc AccessODBC

DROP TABLE [Document]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [Document]
(
	[AttachmentId] Int           NOT NULL,
	[Position]     Int           NOT NULL,
	[Name]         NVarChar(255)     NULL,

	CONSTRAINT [PK_Document] PRIMARY KEY CLUSTERED ([AttachmentId], [Position])
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @AttachmentId Int -- Int32
SET     @AttachmentId = 100
DECLARE @Position_1 Int -- Int32
SET     @Position_1 = 1
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
-- Access.Odbc AccessODBC
DECLARE @AttachmentId Int -- Int32
SET     @AttachmentId = 100
DECLARE @Position_1 Int -- Int32
SET     @Position_1 = 2
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
-- Access.Odbc AccessODBC
DECLARE @AttachmentId Int -- Int32
SET     @AttachmentId = 101
DECLARE @Position_1 Int -- Int32
SET     @Position_1 = 1
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
BeginTransaction(Unspecified)
BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[key_data_result_1].[Id],
	[key_data_result_1].[EmailId],
	[key_data_result_1].[AdminId],
	[key_data_result_1].[Id_1],
	[key_data_result_1].[Id_1_1],
	[__c].[Name]
FROM
	(((
		SELECT DISTINCT
			[a_Email_1].[Id],
			[detail].[EmailId],
			[detail].[AdminId],
			[key_data_result].[Id] as [Id_1],
			[key_data_result].[Id_1] as [Id_1_1]
		FROM
			((((
				SELECT DISTINCT
					[a_Admin].[Id],
					[r].[Id] as [Id_1]
				FROM
					([Request] [r]
						INNER JOIN [User] [a_User] ON ([r].[UserId] = [a_User].[Id]))
						INNER JOIN [Admin] [a_Admin] ON ([a_User].[Id] = [a_Admin].[Id])
			) [key_data_result]
				INNER JOIN [EmailAdminAssociation] [detail] ON ([key_data_result].[Id] = [detail].[AdminId]))
					INNER JOIN [Email] [a_Email] ON ([detail].[EmailId] = [a_Email].[Id]))
						INNER JOIN [InternalEmail] [a_InternalEmail] ON ([a_Email].[Id] = [a_InternalEmail].[Id]))
				INNER JOIN [Email] [a_Email_1] ON ([a_InternalEmail].[Id] = [a_Email_1].[Id])
	) [key_data_result_1]
		INNER JOIN [EmailAttachmentAssociation] [detail_1] ON ([key_data_result_1].[Id] = [detail_1].[EmailId]))
			INNER JOIN [Attachment] [a_Attachment] ON ([detail_1].[AttachmentId] = [a_Attachment].[Id]))
		INNER JOIN [Document] [__c] ON ([a_Attachment].[Id] = [__c].[AttachmentId])

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[key_data_result].[Id],
	[key_data_result].[Id_1],
	[a_Email_1].[Id],
	[detail].[EmailId],
	[detail].[AdminId]
FROM
	((((
		SELECT DISTINCT
			[a_Admin].[Id],
			[r].[Id] as [Id_1]
		FROM
			([Request] [r]
				INNER JOIN [User] [a_User] ON ([r].[UserId] = [a_User].[Id]))
				INNER JOIN [Admin] [a_Admin] ON ([a_User].[Id] = [a_Admin].[Id])
	) [key_data_result]
		INNER JOIN [EmailAdminAssociation] [detail] ON ([key_data_result].[Id] = [detail].[AdminId]))
			LEFT JOIN [Email] [a_Email] ON ([detail].[EmailId] = [a_Email].[Id]))
				LEFT JOIN [InternalEmail] [a_InternalEmail] ON ([a_Email].[Id] = [a_InternalEmail].[Id]))
		LEFT JOIN [Email] [a_Email_1] ON ([a_InternalEmail].[Id] = [a_Email_1].[Id])

BeforeExecute
RollbackTransaction
BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[a_Admin].[Id],
	[r].[Id]
FROM
	([Request] [r]
		INNER JOIN [User] [a_User] ON ([r].[UserId] = [a_User].[Id]))
		INNER JOIN [Admin] [a_Admin] ON ([a_User].[Id] = [a_Admin].[Id])

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Document]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Attachment]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [EmailAttachmentAssociation]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Email]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [EmailAdminAssociation]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Admin]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [User]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Request]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [InternalEmail]

