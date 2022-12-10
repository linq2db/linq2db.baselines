BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [InternalEmail]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [InternalEmail]
(
	[Id]        INTEGER NOT NULL,
	[RequestId] INTEGER     NULL,
	[UserId]    INTEGER     NULL,

	CONSTRAINT [PK_InternalEmail] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [InternalEmail]
(
	[Id],
	[RequestId],
	[UserId]
)
VALUES
(10,1,1)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Request]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Request]
(
	[Id]     INTEGER NOT NULL,
	[UserId] INTEGER NOT NULL,

	CONSTRAINT [PK_Request] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [Request]
(
	[Id],
	[UserId]
)
VALUES
(1,1)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [User]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [User]
(
	[Id] INTEGER NOT NULL,

	CONSTRAINT [PK_User] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [User]
(
	[Id]
)
VALUES
(1)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Admin]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Admin]
(
	[Id] INTEGER NOT NULL,

	CONSTRAINT [PK_Admin] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [Admin]
(
	[Id]
)
VALUES
(1)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [EmailAdminAssociation]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [EmailAdminAssociation]
(
	[EmailId] INTEGER NOT NULL,
	[AdminId] INTEGER NOT NULL,

	CONSTRAINT [PK_EmailAdminAssociation] PRIMARY KEY ([EmailId], [AdminId])
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [EmailAdminAssociation]
(
	[EmailId],
	[AdminId]
)
VALUES
(10,1)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Email]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Email]
(
	[Id] INTEGER NOT NULL,

	CONSTRAINT [PK_Email] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [Email]
(
	[Id]
)
VALUES
(10)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [EmailAttachmentAssociation]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [EmailAttachmentAssociation]
(
	[EmailId]      INTEGER NOT NULL,
	[AttachmentId] INTEGER NOT NULL,

	CONSTRAINT [PK_EmailAttachmentAssociation] PRIMARY KEY ([EmailId], [AttachmentId])
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [EmailAttachmentAssociation]
(
	[EmailId],
	[AttachmentId]
)
VALUES
(10,100)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Attachment]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Attachment]
(
	[Id] INTEGER NOT NULL,

	CONSTRAINT [PK_Attachment] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [Attachment]
(
	[Id]
)
VALUES
(100)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Document]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Document]
(
	[AttachmentId] INTEGER       NOT NULL,
	[Position]     INTEGER       NOT NULL,
	[Name]         NVarChar(255)     NULL,

	CONSTRAINT [PK_Document] PRIMARY KEY ([AttachmentId], [Position])
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [Document]
(
	[AttachmentId],
	[Position],
	[Name]
)
VALUES
(100,1,'Some Doc 1'),
(100,2,'Some Doc 2'),
(101,1,'Some Doc x')

BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[key_data_result_1].[Id],
	[key_data_result_1].[EmailId],
	[key_data_result_1].[AdminId],
	[key_data_result_1].[Id_1],
	[key_data_result_1].[Id_1_1],
	[__c].[Name]
FROM
	(
		SELECT DISTINCT
			[a_Email_1].[Id],
			[detail].[EmailId],
			[detail].[AdminId],
			[key_data_result].[Id] as [Id_1],
			[key_data_result].[Id_1] as [Id_1_1]
		FROM
			(
				SELECT DISTINCT
					[a_Admin].[Id],
					[r].[Id] as [Id_1]
				FROM
					[Request] [r]
						LEFT JOIN [User] [a_User] ON [r].[UserId] = [a_User].[Id]
						LEFT JOIN [Admin] [a_Admin] ON [a_User].[Id] = [a_Admin].[Id]
			) [key_data_result]
				INNER JOIN [EmailAdminAssociation] [detail] ON [key_data_result].[Id] = [detail].[AdminId]
					LEFT JOIN [Email] [a_Email] ON [detail].[EmailId] = [a_Email].[Id]
						LEFT JOIN [InternalEmail] [a_InternalEmail] ON [a_Email].[Id] = [a_InternalEmail].[Id]
				LEFT JOIN [Email] [a_Email_1] ON [a_InternalEmail].[Id] = [a_Email_1].[Id]
	) [key_data_result_1]
		INNER JOIN [EmailAttachmentAssociation] [detail_1] ON [key_data_result_1].[Id] = [detail_1].[EmailId]
			LEFT JOIN [Attachment] [a_Attachment] ON [detail_1].[AttachmentId] = [a_Attachment].[Id]
		INNER JOIN [Document] [__c] ON [a_Attachment].[Id] = [__c].[AttachmentId]

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[key_data_result].[Id],
	[key_data_result].[Id_1],
	[a_Email_1].[Id],
	[detail].[EmailId],
	[detail].[AdminId]
FROM
	(
		SELECT DISTINCT
			[a_Admin].[Id],
			[r].[Id] as [Id_1]
		FROM
			[Request] [r]
				LEFT JOIN [User] [a_User] ON [r].[UserId] = [a_User].[Id]
				LEFT JOIN [Admin] [a_Admin] ON [a_User].[Id] = [a_Admin].[Id]
	) [key_data_result]
		INNER JOIN [EmailAdminAssociation] [detail] ON [key_data_result].[Id] = [detail].[AdminId]
			LEFT JOIN [Email] [a_Email] ON [detail].[EmailId] = [a_Email].[Id]
				LEFT JOIN [InternalEmail] [a_InternalEmail] ON [a_Email].[Id] = [a_InternalEmail].[Id]
		LEFT JOIN [Email] [a_Email_1] ON [a_InternalEmail].[Id] = [a_Email_1].[Id]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[a_Admin].[Id],
	[r].[Id]
FROM
	[Request] [r]
		LEFT JOIN [User] [a_User] ON [r].[UserId] = [a_User].[Id]
		LEFT JOIN [Admin] [a_Admin] ON [a_User].[Id] = [a_Admin].[Id]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Document]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Attachment]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [EmailAttachmentAssociation]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Email]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [EmailAdminAssociation]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Admin]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [User]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Request]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [InternalEmail]

