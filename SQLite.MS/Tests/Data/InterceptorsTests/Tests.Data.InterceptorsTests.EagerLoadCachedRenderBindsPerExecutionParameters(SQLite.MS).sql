-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1

INSERT INTO [Pr5EagerParent]
(
	[Id]
)
VALUES
(
	@Id
)

-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 2

INSERT INTO [Pr5EagerParent]
(
	[Id]
)
VALUES
(
	@Id
)

-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 10
DECLARE @ParentId  -- Int32
SET     @ParentId = 1

INSERT INTO [Pr5EagerChild]
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
SET     @Id = 20
DECLARE @ParentId  -- Int32
SET     @ParentId = 2

INSERT INTO [Pr5EagerChild]
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
DECLARE @id  -- Int32
SET     @id = 1

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[ParentId]
FROM
	[Pr5EagerParent] [m_1]
		INNER JOIN [Pr5EagerChild] [d] ON [m_1].[Id] = [d].[ParentId]
WHERE
	[m_1].[Id] = @id
;
SELECT
	[p].[Id]
FROM
	[Pr5EagerParent] [p]
WHERE
	[p].[Id] = @id

-- SQLite.MS SQLite
DECLARE @id  -- Int32
SET     @id = 2

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[ParentId]
FROM
	[Pr5EagerParent] [m_1]
		INNER JOIN [Pr5EagerChild] [d] ON [m_1].[Id] = [d].[ParentId]
WHERE
	[m_1].[Id] = @id
;
SELECT
	[p].[Id]
FROM
	[Pr5EagerParent] [p]
WHERE
	[p].[Id] = @id

