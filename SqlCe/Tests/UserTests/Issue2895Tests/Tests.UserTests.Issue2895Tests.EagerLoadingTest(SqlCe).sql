BeforeExecute
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

INSERT INTO [InternalEmail]
(
	[Id],
	[RequestId],
	[UserId]
)
SELECT 10,1,1

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

INSERT INTO [Request]
(
	[Id],
	[UserId]
)
SELECT 1,1

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

INSERT INTO [User]
(
	[Id]
)
SELECT 1

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

INSERT INTO [Admin]
(
	[Id]
)
SELECT 1

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

INSERT INTO [EmailAdminAssociation]
(
	[EmailId],
	[AdminId]
)
SELECT 10,1

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

INSERT INTO [Email]
(
	[Id]
)
SELECT 10

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

INSERT INTO [EmailAttachmentAssociation]
(
	[EmailId],
	[AttachmentId]
)
SELECT 10,100

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

INSERT INTO [Attachment]
(
	[Id]
)
SELECT 100

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
-- SqlCe

SELECT
	[m_1].[Id],
	[a_Documents].[Name] as [Detail]
FROM
	(
		SELECT DISTINCT
			[t1].[Id]
		FROM
			[Request] [r]
				LEFT JOIN [User] [a_User] ON [r].[UserId] = [a_User].[Id]
				LEFT JOIN [Admin] [a_Admin] ON [a_User].[Id] = [a_Admin].[Id]
				OUTER APPLY (
					SELECT TOP (1)
						[a_Email_1].[Id]
					FROM
						[EmailAdminAssociation] [a_EmailAdminAssociations]
							LEFT JOIN [Email] [a_Email] ON [a_EmailAdminAssociations].[EmailId] = [a_Email].[Id]
							LEFT JOIN [InternalEmail] [a_InternalEmail] ON [a_Email].[Id] = [a_InternalEmail].[Id]
							LEFT JOIN [Email] [a_Email_1] ON [a_InternalEmail].[Id] = [a_Email_1].[Id]
					WHERE
						[a_Admin].[Id] = [a_EmailAdminAssociations].[AdminId]
				) [t1]
	) [m_1]
		INNER JOIN [EmailAttachmentAssociation] [d] ON [m_1].[Id] = [d].[EmailId]
		LEFT JOIN [Attachment] [a_Attachment] ON [d].[AttachmentId] = [a_Attachment].[Id]
		INNER JOIN [Document] [a_Documents] ON [a_Attachment].[Id] = [a_Documents].[AttachmentId]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlCe

SELECT
	[t1].[cond],
	[t1].[Id]
FROM
	[Request] [r]
		LEFT JOIN [User] [a_User] ON [r].[UserId] = [a_User].[Id]
		LEFT JOIN [Admin] [a_Admin] ON [a_User].[Id] = [a_Admin].[Id]
		OUTER APPLY (
			SELECT TOP (1)
				1 as [cond],
				[a_Email_1].[Id]
			FROM
				[EmailAdminAssociation] [a_EmailAdminAssociations]
					LEFT JOIN [Email] [a_Email] ON [a_EmailAdminAssociations].[EmailId] = [a_Email].[Id]
					LEFT JOIN [InternalEmail] [a_InternalEmail] ON [a_Email].[Id] = [a_InternalEmail].[Id]
					LEFT JOIN [Email] [a_Email_1] ON [a_InternalEmail].[Id] = [a_Email_1].[Id]
			WHERE
				[a_Admin].[Id] = [a_EmailAdminAssociations].[AdminId]
		) [t1]

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

