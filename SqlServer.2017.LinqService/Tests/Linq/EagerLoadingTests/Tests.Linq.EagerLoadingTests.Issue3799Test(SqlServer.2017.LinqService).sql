BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [Test3799Item]

BeforeExecute
-- SqlServer.2017

IF (OBJECT_ID(N'[Test3799Item]', N'U') IS NULL)
	CREATE TABLE [Test3799Item]
	(
		[Id]       Int            NOT NULL,
		[ParentId] Int                NULL,
		[Name]     NVarChar(4000) NOT NULL,

		CONSTRAINT [PK_Test3799Item] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2017
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @ParentId Int -- Int32
SET     @ParentId = NULL
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'root'

INSERT INTO [Test3799Item]
(
	[Id],
	[ParentId],
	[Name]
)
VALUES
(
	@Id,
	@ParentId,
	@Name
)

BeforeExecute
-- SqlServer.2017
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @ParentId Int -- Int32
SET     @ParentId = 1
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'child 1'

INSERT INTO [Test3799Item]
(
	[Id],
	[ParentId],
	[Name]
)
VALUES
(
	@Id,
	@ParentId,
	@Name
)

BeforeExecute
-- SqlServer.2017
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @ParentId Int -- Int32
SET     @ParentId = 2
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'child 1.1'

INSERT INTO [Test3799Item]
(
	[Id],
	[ParentId],
	[Name]
)
VALUES
(
	@Id,
	@ParentId,
	@Name
)

BeforeExecute
-- SqlServer.2017
DECLARE @Id Int -- Int32
SET     @Id = 4
DECLARE @ParentId Int -- Int32
SET     @ParentId = 2
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'child 1.2'

INSERT INTO [Test3799Item]
(
	[Id],
	[ParentId],
	[Name]
)
VALUES
(
	@Id,
	@ParentId,
	@Name
)

BeforeExecute
-- SqlServer.2017
DECLARE @Id Int -- Int32
SET     @Id = 5
DECLARE @ParentId Int -- Int32
SET     @ParentId = 1
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'child 2'

INSERT INTO [Test3799Item]
(
	[Id],
	[ParentId],
	[Name]
)
VALUES
(
	@Id,
	@ParentId,
	@Name
)

BeforeExecute
-- SqlServer.2017
DECLARE @Id Int -- Int32
SET     @Id = 6
DECLARE @ParentId Int -- Int32
SET     @ParentId = 5
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'child 2.1'

INSERT INTO [Test3799Item]
(
	[Id],
	[ParentId],
	[Name]
)
VALUES
(
	@Id,
	@ParentId,
	@Name
)

BeforeExecute
-- SqlServer.2017
DECLARE @Id Int -- Int32
SET     @Id = 7
DECLARE @ParentId Int -- Int32
SET     @ParentId = 5
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'child 2.1'

INSERT INTO [Test3799Item]
(
	[Id],
	[ParentId],
	[Name]
)
VALUES
(
	@Id,
	@ParentId,
	@Name
)

BeforeExecute
-- SqlServer.2017

SELECT
	[m_1].[Children],
	[d].[Name]
FROM
	(
		SELECT DISTINCT
			[t1].[Children]
		FROM
			[Test3799Item] [item_1]
				OUTER APPLY (
					SELECT TOP (1)
						[a_Children].[Id] as [Children]
					FROM
						[Test3799Item] [a_Children]
					WHERE
						[item_1].[Id] = [a_Children].[ParentId]
				) [t1]
	) [m_1]
		INNER JOIN [Test3799Item] [d] ON [m_1].[Children] = [d].[ParentId] OR [m_1].[Children] IS NULL AND [d].[ParentId] IS NULL

BeforeExecute
-- SqlServer.2017

SELECT
	[item_1].[Name],
	[t1].[Name],
	[t1].[Children]
FROM
	[Test3799Item] [item_1]
		OUTER APPLY (
			SELECT TOP (1)
				[a_Children].[Name],
				[a_Children].[Id] as [Children]
			FROM
				[Test3799Item] [a_Children]
			WHERE
				[item_1].[Id] = [a_Children].[ParentId]
		) [t1]

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [Test3799Item]

