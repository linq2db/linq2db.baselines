BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [HierarchyTree]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [HierarchyTree]
(
	[Id]       INTEGER NOT NULL,
	[ParentId] INTEGER     NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @ParentId  -- Int32
SET     @ParentId = NULL

INSERT INTO [HierarchyTree]
(
	[Id],
	[ParentId]
)
VALUES
(
	@Id,
	@ParentId
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @ParentId  -- Int32
SET     @ParentId = NULL

INSERT INTO [HierarchyTree]
(
	[Id],
	[ParentId]
)
VALUES
(
	@Id,
	@ParentId
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 10
DECLARE @ParentId  -- Int32
SET     @ParentId = 1

INSERT INTO [HierarchyTree]
(
	[Id],
	[ParentId]
)
VALUES
(
	@Id,
	@ParentId
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 11
DECLARE @ParentId  -- Int32
SET     @ParentId = 1

INSERT INTO [HierarchyTree]
(
	[Id],
	[ParentId]
)
VALUES
(
	@Id,
	@ParentId
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 20
DECLARE @ParentId  -- Int32
SET     @ParentId = 2

INSERT INTO [HierarchyTree]
(
	[Id],
	[ParentId]
)
VALUES
(
	@Id,
	@ParentId
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 22
DECLARE @ParentId  -- Int32
SET     @ParentId = 2

INSERT INTO [HierarchyTree]
(
	[Id],
	[ParentId]
)
VALUES
(
	@Id,
	@ParentId
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 100
DECLARE @ParentId  -- Int32
SET     @ParentId = 10

INSERT INTO [HierarchyTree]
(
	[Id],
	[ParentId]
)
VALUES
(
	@Id,
	@ParentId
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 101
DECLARE @ParentId  -- Int32
SET     @ParentId = 10

INSERT INTO [HierarchyTree]
(
	[Id],
	[ParentId]
)
VALUES
(
	@Id,
	@ParentId
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 102
DECLARE @ParentId  -- Int32
SET     @ParentId = 10

INSERT INTO [HierarchyTree]
(
	[Id],
	[ParentId]
)
VALUES
(
	@Id,
	@ParentId
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 110
DECLARE @ParentId  -- Int32
SET     @ParentId = 11

INSERT INTO [HierarchyTree]
(
	[Id],
	[ParentId]
)
VALUES
(
	@Id,
	@ParentId
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 111
DECLARE @ParentId  -- Int32
SET     @ParentId = 11

INSERT INTO [HierarchyTree]
(
	[Id],
	[ParentId]
)
VALUES
(
	@Id,
	@ParentId
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 112
DECLARE @ParentId  -- Int32
SET     @ParentId = 11

INSERT INTO [HierarchyTree]
(
	[Id],
	[ParentId]
)
VALUES
(
	@Id,
	@ParentId
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 200
DECLARE @ParentId  -- Int32
SET     @ParentId = 20

INSERT INTO [HierarchyTree]
(
	[Id],
	[ParentId]
)
VALUES
(
	@Id,
	@ParentId
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 201
DECLARE @ParentId  -- Int32
SET     @ParentId = 20

INSERT INTO [HierarchyTree]
(
	[Id],
	[ParentId]
)
VALUES
(
	@Id,
	@ParentId
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 202
DECLARE @ParentId  -- Int32
SET     @ParentId = 20

INSERT INTO [HierarchyTree]
(
	[Id],
	[ParentId]
)
VALUES
(
	@Id,
	@ParentId
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 210
DECLARE @ParentId  -- Int32
SET     @ParentId = 21

INSERT INTO [HierarchyTree]
(
	[Id],
	[ParentId]
)
VALUES
(
	@Id,
	@ParentId
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 211
DECLARE @ParentId  -- Int32
SET     @ParentId = 21

INSERT INTO [HierarchyTree]
(
	[Id],
	[ParentId]
)
VALUES
(
	@Id,
	@ParentId
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 212
DECLARE @ParentId  -- Int32
SET     @ParentId = 21

INSERT INTO [HierarchyTree]
(
	[Id],
	[ParentId]
)
VALUES
(
	@Id,
	@ParentId
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

WITH [CTE_1] ([Id])
AS
(
	SELECT
		[t].[Id]
	FROM
		[HierarchyTree] [t]
	WHERE
		[t].[ParentId] IS NULL
),
[CTE_2] ([ParentId], [Id])
AS
(
	SELECT
		[t1].[ParentId],
		[t1].[Id]
	FROM
		[HierarchyTree] [t1]
),
[hierarchyDown] ([Level], [Id])
AS
(
	SELECT
		0,
		[t2].[Id]
	FROM
		[CTE_1] [t2]
	UNION ALL
	SELECT
		[t3].[Level] + 1,
		[t_1].[Id]
	FROM
		[hierarchyDown] [t3]
			INNER JOIN [CTE_2] [t_1] ON ([t_1].[ParentId] = [t3].[Id] OR [t_1].[ParentId] IS NULL AND [t3].[Id] IS NULL)
),
[hierarchyDown0] ([Level], [Id])
AS
(
	SELECT
		0,
		[t4].[Id]
	FROM
		[CTE_1] [t4]
	UNION ALL
	SELECT
		[t5].[Level] + 1,
		[t_2].[Id]
	FROM
		[hierarchyDown0] [t5]
			INNER JOIN [CTE_2] [t_2] ON ([t_2].[ParentId] = [t5].[Id] OR [t_2].[ParentId] IS NULL AND [t5].[Id] IS NULL)
)
SELECT
	Count(*)
FROM
	[hierarchyDown] [t6]
		INNER JOIN [hierarchyDown0] [h2] ON ([h2].[Id] = [t6].[Id] OR [h2].[Id] IS NULL AND [t6].[Id] IS NULL)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [HierarchyTree]

