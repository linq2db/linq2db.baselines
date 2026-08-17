-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1

INSERT INTO [RcParent]
(
	[Id]
)
VALUES
(
	@Id
)

-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @ParentId  -- Int32
SET     @ParentId = 1
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'alpha'

INSERT INTO [RcChild]
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

-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @ParentId  -- Int32
SET     @ParentId = 1
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'beta'

INSERT INTO [RcChild]
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

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[ParentId],
	[d].[Name]
FROM
	[RcParent] [m_1]
		INNER JOIN [RcChild] [d] ON [m_1].[Id] = [d].[ParentId]
;
SELECT
	[t1].[Id]
FROM
	[RcParent] [t1]

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[ParentId],
	[d].[Name]
FROM
	[RcParent] [m_1]
		INNER JOIN [RcChild] [d] ON [m_1].[Id] = [d].[ParentId]
;
SELECT
	[t1].[Id]
FROM
	[RcParent] [t1]

