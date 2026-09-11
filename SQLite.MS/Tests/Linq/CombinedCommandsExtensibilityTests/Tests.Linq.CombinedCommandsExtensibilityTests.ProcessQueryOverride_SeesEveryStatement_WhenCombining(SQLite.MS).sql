-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1

INSERT INTO [CeParent]
(
	[Id]
)
VALUES
(
	@Id
)

-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @ParentId  -- Int32
SET     @ParentId = 1

INSERT INTO [CeChild]
(
	[Id],
	[ParentId]
)
VALUES
(
	@Id,
	@ParentId
)

-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @ParentId  -- Int32
SET     @ParentId = 1

INSERT INTO [CeChild]
(
	[Id],
	[ParentId]
)
VALUES
(
	@Id,
	@ParentId
)

-- SQLite.MS SQLite
SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[ParentId]
FROM
	[CeParent] [m_1]
		INNER JOIN [CeChild] [d] ON [m_1].[Id] = [d].[ParentId]

-- SQLite.MS SQLite
SELECT
	[t1].[Id]
FROM
	[CeParent] [t1]

-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1

INSERT INTO [CeParent]
(
	[Id]
)
VALUES
(
	@Id
)

-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @ParentId  -- Int32
SET     @ParentId = 1

INSERT INTO [CeChild]
(
	[Id],
	[ParentId]
)
VALUES
(
	@Id,
	@ParentId
)

-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @ParentId  -- Int32
SET     @ParentId = 1

INSERT INTO [CeChild]
(
	[Id],
	[ParentId]
)
VALUES
(
	@Id,
	@ParentId
)

-- SQLite.MS SQLite
SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[ParentId]
FROM
	[CeParent] [m_1]
		INNER JOIN [CeChild] [d] ON [m_1].[Id] = [d].[ParentId]

-- SQLite.MS SQLite
SELECT
	[t1].[Id]
FROM
	[CeParent] [t1]

