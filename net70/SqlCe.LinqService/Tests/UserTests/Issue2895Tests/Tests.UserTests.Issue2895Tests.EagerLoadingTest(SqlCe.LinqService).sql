﻿BeforeExecute
-- SqlCe

DROP TABLE [InternalEmail]

BeforeExecute
-- SqlCe

CREATE TABLE [InternalEmail]
(
	[Id]        Int NOT NULL,
	[RequestId] Int     NULL,
	[UserId]    Int     NULL,

	CONSTRAINT [PK_InternalEmail] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe
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
	@Id,
	@RequestId,
	@UserId
)

BeforeExecute
-- SqlCe

DROP TABLE [Request]

BeforeExecute
-- SqlCe

CREATE TABLE [Request]
(
	[Id]     Int NOT NULL,
	[UserId] Int NOT NULL,

	CONSTRAINT [PK_Request] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe
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
	@Id,
	@UserId
)

BeforeExecute
-- SqlCe

DROP TABLE [User]

BeforeExecute
-- SqlCe

CREATE TABLE [User]
(
	[Id] Int NOT NULL,

	CONSTRAINT [PK_User] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
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
-- SqlCe

DROP TABLE [Admin]

BeforeExecute
-- SqlCe

CREATE TABLE [Admin]
(
	[Id] Int NOT NULL,

	CONSTRAINT [PK_Admin] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
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
-- SqlCe

DROP TABLE [EmailAdminAssociation]

BeforeExecute
-- SqlCe

CREATE TABLE [EmailAdminAssociation]
(
	[EmailId] Int NOT NULL,
	[AdminId] Int NOT NULL,

	CONSTRAINT [PK_EmailAdminAssociation] PRIMARY KEY ([EmailId], [AdminId])
)

BeforeExecute
-- SqlCe
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
	@EmailId,
	@AdminId
)

BeforeExecute
-- SqlCe

DROP TABLE [Email]

BeforeExecute
-- SqlCe

CREATE TABLE [Email]
(
	[Id] Int NOT NULL,

	CONSTRAINT [PK_Email] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
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
-- SqlCe

DROP TABLE [EmailAttachmentAssociation]

BeforeExecute
-- SqlCe

CREATE TABLE [EmailAttachmentAssociation]
(
	[EmailId]      Int NOT NULL,
	[AttachmentId] Int NOT NULL,

	CONSTRAINT [PK_EmailAttachmentAssociation] PRIMARY KEY ([EmailId], [AttachmentId])
)

BeforeExecute
-- SqlCe
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
	@EmailId,
	@AttachmentId
)

BeforeExecute
-- SqlCe

DROP TABLE [Attachment]

BeforeExecute
-- SqlCe

CREATE TABLE [Attachment]
(
	[Id] Int NOT NULL,

	CONSTRAINT [PK_Attachment] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
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
-- SqlCe

DROP TABLE [Document]

BeforeExecute
-- SqlCe

CREATE TABLE [Document]
(
	[AttachmentId] Int           NOT NULL,
	[Position]     Int           NOT NULL,
	[Name]         NVarChar(255)     NULL,

	CONSTRAINT [PK_Document] PRIMARY KEY ([AttachmentId], [Position])
)

BeforeExecute
-- SqlCe
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
	@AttachmentId,
	@Position_1,
	@Name
)

BeforeExecute
-- SqlCe
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
	@AttachmentId,
	@Position_1,
	@Name
)

BeforeExecute
-- SqlCe
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
	@AttachmentId,
	@Position_1,
	@Name
)

BeforeExecute
-- SqlCe

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
				INNER JOIN [EmailAdminAssociation] [detail]
					LEFT JOIN [Email] [a_Email]
						LEFT JOIN [InternalEmail] [a_InternalEmail] ON [a_Email].[Id] = [a_InternalEmail].[Id]
					ON [detail].[EmailId] = [a_Email].[Id]
				ON [key_data_result].[c1] = [detail].[AdminId]
				LEFT JOIN [Email] [a_Email_1] ON [a_InternalEmail].[Id] = [a_Email_1].[Id]
	) [key_data_result_1]
		INNER JOIN [EmailAttachmentAssociation] [detail_1]
			LEFT JOIN [Attachment] [a_Attachment] ON [detail_1].[AttachmentId] = [a_Attachment].[Id]
		ON [key_data_result_1].[c1] = [detail_1].[EmailId]
		INNER JOIN [Document] [__c] ON [a_Attachment].[Id] = [__c].[AttachmentId]

BeforeExecute
-- SqlCe

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
		INNER JOIN [EmailAdminAssociation] [detail]
			LEFT JOIN [Email] [a_Email]
				LEFT JOIN [InternalEmail] [a_InternalEmail] ON [a_Email].[Id] = [a_InternalEmail].[Id]
			ON [detail].[EmailId] = [a_Email].[Id]
		ON [key_data_result].[c1] = [detail].[AdminId]
		LEFT JOIN [Email] [a_Email_1] ON [a_InternalEmail].[Id] = [a_Email_1].[Id]

BeforeExecute
-- SqlCe

SELECT
	[a_Admin].[Id],
	[r].[Id]
FROM
	[Request] [r]
		LEFT JOIN [User] [a_User] ON [r].[UserId] = [a_User].[Id]
		LEFT JOIN [Admin] [a_Admin] ON [a_User].[Id] = [a_Admin].[Id]

BeforeExecute
-- SqlCe

DROP TABLE [Document]

BeforeExecute
-- SqlCe

DROP TABLE [Attachment]

BeforeExecute
-- SqlCe

DROP TABLE [EmailAttachmentAssociation]

BeforeExecute
-- SqlCe

DROP TABLE [Email]

BeforeExecute
-- SqlCe

DROP TABLE [EmailAdminAssociation]

BeforeExecute
-- SqlCe

DROP TABLE [Admin]

BeforeExecute
-- SqlCe

DROP TABLE [User]

BeforeExecute
-- SqlCe

DROP TABLE [Request]

BeforeExecute
-- SqlCe

DROP TABLE [InternalEmail]

