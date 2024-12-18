BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [InternalEmail]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [InternalEmail]
(
	[Id]        INTEGER NOT NULL,
	[RequestId] INTEGER     NULL,
	[UserId]    INTEGER     NULL,

	CONSTRAINT [PK_InternalEmail] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 10
DECLARE @RequestId  -- Int32
SET     @RequestId = 1
DECLARE @UserId  -- Int32
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
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Request]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Request]
(
	[Id]     INTEGER NOT NULL,
	[UserId] INTEGER NOT NULL,

	CONSTRAINT [PK_Request] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @UserId  -- Int32
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
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [User]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [User]
(
	[Id] INTEGER NOT NULL,

	CONSTRAINT [PK_User] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
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
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Admin]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Admin]
(
	[Id] INTEGER NOT NULL,

	CONSTRAINT [PK_Admin] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
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
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [EmailAdminAssociation]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [EmailAdminAssociation]
(
	[EmailId] INTEGER NOT NULL,
	[AdminId] INTEGER NOT NULL,

	CONSTRAINT [PK_EmailAdminAssociation] PRIMARY KEY ([EmailId], [AdminId])
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @EmailId  -- Int32
SET     @EmailId = 10
DECLARE @AdminId  -- Int32
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
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Email]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Email]
(
	[Id] INTEGER NOT NULL,

	CONSTRAINT [PK_Email] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
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
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [EmailAttachmentAssociation]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [EmailAttachmentAssociation]
(
	[EmailId]      INTEGER NOT NULL,
	[AttachmentId] INTEGER NOT NULL,

	CONSTRAINT [PK_EmailAttachmentAssociation] PRIMARY KEY ([EmailId], [AttachmentId])
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @EmailId  -- Int32
SET     @EmailId = 10
DECLARE @AttachmentId  -- Int32
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
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Attachment]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Attachment]
(
	[Id] INTEGER NOT NULL,

	CONSTRAINT [PK_Attachment] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
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
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Document]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Document]
(
	[AttachmentId] INTEGER       NOT NULL,
	[Position]     INTEGER       NOT NULL,
	[Name]         NVarChar(255)     NULL,

	CONSTRAINT [PK_Document] PRIMARY KEY ([AttachmentId], [Position])
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @AttachmentId  -- Int32
SET     @AttachmentId = 100
DECLARE @Position  -- Int32
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
	@AttachmentId,
	@Position,
	@Name
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @AttachmentId  -- Int32
SET     @AttachmentId = 100
DECLARE @Position  -- Int32
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
	@AttachmentId,
	@Position,
	@Name
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @AttachmentId  -- Int32
SET     @AttachmentId = 101
DECLARE @Position  -- Int32
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
	@AttachmentId,
	@Position,
	@Name
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[m_1].[Id],
	[a_Documents].[Name]
FROM
	(
		SELECT DISTINCT
			[t1].[Id]
		FROM
			[Request] [r]
				LEFT JOIN [User] [a_User] ON [r].[UserId] = [a_User].[Id]
				LEFT JOIN [Admin] [a_Admin] ON [a_User].[Id] = [a_Admin].[Id]
				LEFT JOIN (
					SELECT
						[a_Email_1].[Id],
						ROW_NUMBER() OVER (PARTITION BY [a_EmailAdminAssociations].[AdminId] ORDER BY [a_EmailAdminAssociations].[AdminId]) as [rn],
						[a_EmailAdminAssociations].[AdminId]
					FROM
						[EmailAdminAssociation] [a_EmailAdminAssociations]
							LEFT JOIN [Email] [a_Email] ON [a_EmailAdminAssociations].[EmailId] = [a_Email].[Id]
							LEFT JOIN [InternalEmail] [a_InternalEmail] ON [a_Email].[Id] = [a_InternalEmail].[Id]
							LEFT JOIN [Email] [a_Email_1] ON [a_InternalEmail].[Id] = [a_Email_1].[Id]
				) [t1] ON [a_Admin].[Id] = [t1].[AdminId] AND [t1].[rn] <= 1
	) [m_1]
		INNER JOIN [EmailAttachmentAssociation] [d] ON [m_1].[Id] = [d].[EmailId] AND [m_1].[Id] IS NOT NULL
		LEFT JOIN [Attachment] [a_Attachment] ON [d].[AttachmentId] = [a_Attachment].[Id]
		INNER JOIN [Document] [a_Documents] ON [a_Attachment].[Id] = [a_Documents].[AttachmentId]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[cond],
	[t1].[Id]
FROM
	[Request] [r]
		LEFT JOIN [User] [a_User] ON [r].[UserId] = [a_User].[Id]
		LEFT JOIN [Admin] [a_Admin] ON [a_User].[Id] = [a_Admin].[Id]
		LEFT JOIN (
			SELECT
				1 as [cond],
				[a_Email_1].[Id],
				ROW_NUMBER() OVER (PARTITION BY [a_EmailAdminAssociations].[AdminId] ORDER BY [a_EmailAdminAssociations].[AdminId]) as [rn],
				[a_EmailAdminAssociations].[AdminId]
			FROM
				[EmailAdminAssociation] [a_EmailAdminAssociations]
					LEFT JOIN [Email] [a_Email] ON [a_EmailAdminAssociations].[EmailId] = [a_Email].[Id]
					LEFT JOIN [InternalEmail] [a_InternalEmail] ON [a_Email].[Id] = [a_InternalEmail].[Id]
					LEFT JOIN [Email] [a_Email_1] ON [a_InternalEmail].[Id] = [a_Email_1].[Id]
		) [t1] ON [a_Admin].[Id] = [t1].[AdminId] AND [t1].[rn] <= 1

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Document]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Attachment]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [EmailAttachmentAssociation]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Email]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [EmailAdminAssociation]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Admin]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [User]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Request]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [InternalEmail]

