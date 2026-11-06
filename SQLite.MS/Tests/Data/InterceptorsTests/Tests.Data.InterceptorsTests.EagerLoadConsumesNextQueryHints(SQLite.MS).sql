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
SET     @Id = 1
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
SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[ParentId]
FROM
	[Pr5EagerParent] [m_1]
		INNER JOIN [Pr5EagerChild] [d] ON [m_1].[Id] = [d].[ParentId]
-- pr5 next-query hint

-- SQLite.MS SQLite
SELECT
	[t1].[Id]
FROM
	[Pr5EagerParent] [t1]

