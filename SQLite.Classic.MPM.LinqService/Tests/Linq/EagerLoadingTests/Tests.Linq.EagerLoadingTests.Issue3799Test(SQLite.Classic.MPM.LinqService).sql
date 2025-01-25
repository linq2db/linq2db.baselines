BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Test3799Item]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Test3799Item]
(
	[Id]       INTEGER       NOT NULL,
	[ParentId] INTEGER           NULL,
	[Name]     NVarChar(255) NOT NULL,

	CONSTRAINT [PK_Test3799Item] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @ParentId  -- Int32
SET     @ParentId = NULL
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'root'

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
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @ParentId  -- Int32
SET     @ParentId = 1
DECLARE @Name NVarChar(7) -- String
SET     @Name = 'child 1'

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
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 3
DECLARE @ParentId  -- Int32
SET     @ParentId = 2
DECLARE @Name NVarChar(9) -- String
SET     @Name = 'child 1.1'

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
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 4
DECLARE @ParentId  -- Int32
SET     @ParentId = 2
DECLARE @Name NVarChar(9) -- String
SET     @Name = 'child 1.2'

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
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 5
DECLARE @ParentId  -- Int32
SET     @ParentId = 1
DECLARE @Name NVarChar(7) -- String
SET     @Name = 'child 2'

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
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 6
DECLARE @ParentId  -- Int32
SET     @ParentId = 5
DECLARE @Name NVarChar(9) -- String
SET     @Name = 'child 2.1'

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
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 7
DECLARE @ParentId  -- Int32
SET     @ParentId = 5
DECLARE @Name NVarChar(9) -- String
SET     @Name = 'child 2.1'

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
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[m_1].[Id],
	[d].[Name]
FROM
	(
		SELECT DISTINCT
			[t1].[Id]
		FROM
			[Test3799Item] [item_1]
				LEFT JOIN (
					SELECT
						[a_Children].[Id],
						ROW_NUMBER() OVER (PARTITION BY [a_Children].[ParentId] ORDER BY [a_Children].[ParentId]) as [rn],
						[a_Children].[ParentId]
					FROM
						[Test3799Item] [a_Children]
				) [t1] ON [item_1].[Id] = [t1].[ParentId] AND [t1].[rn] <= 1
	) [m_1]
		INNER JOIN [Test3799Item] [d] ON ([m_1].[Id] = [d].[ParentId] OR [m_1].[Id] IS NULL AND [d].[ParentId] IS NULL)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[item_1].[Name],
	[t1].[Name],
	[t1].[Id]
FROM
	[Test3799Item] [item_1]
		LEFT JOIN (
			SELECT
				[a_Children].[Name],
				[a_Children].[Id],
				ROW_NUMBER() OVER (PARTITION BY [a_Children].[ParentId] ORDER BY [a_Children].[ParentId]) as [rn],
				[a_Children].[ParentId]
			FROM
				[Test3799Item] [a_Children]
		) [t1] ON [item_1].[Id] = [t1].[ParentId] AND [t1].[rn] <= 1

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Test3799Item]

