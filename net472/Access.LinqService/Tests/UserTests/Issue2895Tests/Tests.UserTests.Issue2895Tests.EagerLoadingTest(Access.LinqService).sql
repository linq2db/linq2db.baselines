BeforeExecute
-- Access AccessOleDb

DROP TABLE [InternalEmail]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [InternalEmail]
(
	[Id]        Int NOT NULL,
	[RequestId] Int     NULL,
	[UserId]    Int     NULL,

	CONSTRAINT [PK_InternalEmail] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access AccessOleDb
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
-- Access AccessOleDb

DROP TABLE [Request]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [Request]
(
	[Id]     Int NOT NULL,
	[UserId] Int NOT NULL,

	CONSTRAINT [PK_Request] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access AccessOleDb
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
-- Access AccessOleDb

DROP TABLE [User]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [User]
(
	[Id] Int NOT NULL,

	CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access AccessOleDb
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
-- Access AccessOleDb

DROP TABLE [Admin]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [Admin]
(
	[Id] Int NOT NULL,

	CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access AccessOleDb
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
-- Access AccessOleDb

DROP TABLE [EmailAdminAssociation]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [EmailAdminAssociation]
(
	[EmailId] Int NOT NULL,
	[AdminId] Int NOT NULL,

	CONSTRAINT [PK_EmailAdminAssociation] PRIMARY KEY CLUSTERED ([EmailId], [AdminId])
)

BeforeExecute
-- Access AccessOleDb
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
-- Access AccessOleDb

DROP TABLE [Email]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [Email]
(
	[Id] Int NOT NULL,

	CONSTRAINT [PK_Email] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access AccessOleDb
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
-- Access AccessOleDb

DROP TABLE [EmailAttachmentAssociation]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [EmailAttachmentAssociation]
(
	[EmailId]      Int NOT NULL,
	[AttachmentId] Int NOT NULL,

	CONSTRAINT [PK_EmailAttachmentAssociation] PRIMARY KEY CLUSTERED ([EmailId], [AttachmentId])
)

BeforeExecute
-- Access AccessOleDb
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
-- Access AccessOleDb

DROP TABLE [Attachment]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [Attachment]
(
	[Id] Int NOT NULL,

	CONSTRAINT [PK_Attachment] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access AccessOleDb
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
-- Access AccessOleDb

DROP TABLE [Document]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [Document]
(
	[AttachmentId] Int           NOT NULL,
	[Position]     Int           NOT NULL,
	[Name]         NVarChar(255)     NULL,

	CONSTRAINT [PK_Document] PRIMARY KEY CLUSTERED ([AttachmentId], [Position])
)

BeforeExecute
-- Access AccessOleDb
DECLARE @AttachmentId Integer -- Int32
SET     @AttachmentId = 100
DECLARE @Position_1 Integer -- Int32
SET     @Position_1 = 1
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
	@Position_1,
	@Name
)

BeforeExecute
-- Access AccessOleDb
DECLARE @AttachmentId Integer -- Int32
SET     @AttachmentId = 100
DECLARE @Position_1 Integer -- Int32
SET     @Position_1 = 2
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
	@Position_1,
	@Name
)

BeforeExecute
-- Access AccessOleDb
DECLARE @AttachmentId Integer -- Int32
SET     @AttachmentId = 101
DECLARE @Position_1 Integer -- Int32
SET     @Position_1 = 1
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
	@Position_1,
	@Name
)

BeforeExecute
-- Access AccessOleDb

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
-- Access AccessOleDb

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
-- Access AccessOleDb

SELECT
	[a_Admin].[Id],
	[r].[Id]
FROM
	([Request] [r]
		INNER JOIN [User] [a_User] ON ([r].[UserId] = [a_User].[Id]))
		INNER JOIN [Admin] [a_Admin] ON ([a_User].[Id] = [a_Admin].[Id])

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Document]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Attachment]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [EmailAttachmentAssociation]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Email]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [EmailAdminAssociation]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Admin]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [User]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Request]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [InternalEmail]

