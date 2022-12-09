﻿BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [InternalEmail]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [InternalEmail]
(
	[Id]        INTEGER NOT NULL,
	[RequestId] INTEGER     NULL,
	[UserId]    INTEGER     NULL,

	CONSTRAINT [PK_InternalEmail] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [InternalEmail]
(
	[Id],
	[RequestId],
	[UserId]
)
VALUES
(10,1,1)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Request]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Request]
(
	[Id]     INTEGER NOT NULL,
	[UserId] INTEGER NOT NULL,

	CONSTRAINT [PK_Request] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [Request]
(
	[Id],
	[UserId]
)
VALUES
(1,1)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [User]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [User]
(
	[Id] INTEGER NOT NULL,

	CONSTRAINT [PK_User] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [User]
(
	[Id]
)
VALUES
(1)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Admin]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Admin]
(
	[Id] INTEGER NOT NULL,

	CONSTRAINT [PK_Admin] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [Admin]
(
	[Id]
)
VALUES
(1)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [EmailAdminAssociation]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [EmailAdminAssociation]
(
	[EmailId] INTEGER NOT NULL,
	[AdminId] INTEGER NOT NULL,

	CONSTRAINT [PK_EmailAdminAssociation] PRIMARY KEY ([EmailId], [AdminId])
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [EmailAdminAssociation]
(
	[EmailId],
	[AdminId]
)
VALUES
(10,1)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Email]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Email]
(
	[Id] INTEGER NOT NULL,

	CONSTRAINT [PK_Email] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [Email]
(
	[Id]
)
VALUES
(10)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [EmailAttachmentAssociation]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [EmailAttachmentAssociation]
(
	[EmailId]      INTEGER NOT NULL,
	[AttachmentId] INTEGER NOT NULL,

	CONSTRAINT [PK_EmailAttachmentAssociation] PRIMARY KEY ([EmailId], [AttachmentId])
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [EmailAttachmentAssociation]
(
	[EmailId],
	[AttachmentId]
)
VALUES
(10,100)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Attachment]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Attachment]
(
	[Id] INTEGER NOT NULL,

	CONSTRAINT [PK_Attachment] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [Attachment]
(
	[Id]
)
VALUES
(100)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Document]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Document]
(
	[AttachmentId] INTEGER       NOT NULL,
	[Position]     INTEGER       NOT NULL,
	[Name]         NVarChar(255)     NULL,

	CONSTRAINT [PK_Document] PRIMARY KEY ([AttachmentId], [Position])
)

BeforeExecute
-- SQLite.MS SQLite

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
-- SQLite.MS SQLite

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
				INNER JOIN [EmailAdminAssociation] [detail] ON [key_data_result].[c1] = [detail].[AdminId]
					LEFT JOIN [Email] [a_Email] ON [detail].[EmailId] = [a_Email].[Id]
						LEFT JOIN [InternalEmail] [a_InternalEmail] ON [a_Email].[Id] = [a_InternalEmail].[Id]
				LEFT JOIN [Email] [a_Email_1] ON [a_InternalEmail].[Id] = [a_Email_1].[Id]
	) [key_data_result_1]
		INNER JOIN [EmailAttachmentAssociation] [detail_1] ON [key_data_result_1].[c1] = [detail_1].[EmailId]
			LEFT JOIN [Attachment] [a_Attachment] ON [detail_1].[AttachmentId] = [a_Attachment].[Id]
		INNER JOIN [Document] [__c] ON [a_Attachment].[Id] = [__c].[AttachmentId]

BeforeExecute
-- SQLite.MS SQLite

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
		INNER JOIN [EmailAdminAssociation] [detail] ON [key_data_result].[c1] = [detail].[AdminId]
			LEFT JOIN [Email] [a_Email] ON [detail].[EmailId] = [a_Email].[Id]
				LEFT JOIN [InternalEmail] [a_InternalEmail] ON [a_Email].[Id] = [a_InternalEmail].[Id]
		LEFT JOIN [Email] [a_Email_1] ON [a_InternalEmail].[Id] = [a_Email_1].[Id]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SQLite.MS SQLite

SELECT
	[a_Admin].[Id],
	[r].[Id]
FROM
	[Request] [r]
		LEFT JOIN [User] [a_User] ON [r].[UserId] = [a_User].[Id]
		LEFT JOIN [Admin] [a_Admin] ON [a_User].[Id] = [a_Admin].[Id]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Document]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Attachment]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [EmailAttachmentAssociation]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Email]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [EmailAdminAssociation]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Admin]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [User]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Request]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [InternalEmail]

