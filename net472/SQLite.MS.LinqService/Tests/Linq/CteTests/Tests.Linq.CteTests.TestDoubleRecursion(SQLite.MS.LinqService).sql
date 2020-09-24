﻿BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [HierarchyTree]
(
	[Id]       INTEGER NOT NULL,
	[ParentId] INTEGER     NULL
)

BeforeExecute
-- SQLite.MS SQLite
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
-- SQLite.MS SQLite
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
-- SQLite.MS SQLite
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
-- SQLite.MS SQLite
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
-- SQLite.MS SQLite
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
-- SQLite.MS SQLite
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
-- SQLite.MS SQLite
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
-- SQLite.MS SQLite
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
-- SQLite.MS SQLite
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
-- SQLite.MS SQLite
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
-- SQLite.MS SQLite
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
-- SQLite.MS SQLite
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
-- SQLite.MS SQLite
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
-- SQLite.MS SQLite
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
-- SQLite.MS SQLite
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
-- SQLite.MS SQLite
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
-- SQLite.MS SQLite
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
-- SQLite.MS SQLite
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
-- SQLite.MS SQLite

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
[hierarchyDown] ([Id], [Level])
AS
(
	SELECT
		[t_1].[Id],
		0
	FROM
		[CTE_1] [t_1]
	UNION ALL
	SELECT
		[t_2].[Id],
		[h].[Level] + 1
	FROM
		[hierarchyDown] [h]
			INNER JOIN [CTE_2] [t_2] ON [t_2].[ParentId] = [h].[Id]
)
SELECT
	Count(*)
FROM
	[hierarchyDown] [h1]
		INNER JOIN [hierarchyDown] [h2] ON [h2].[Id] = [h1].[Id]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [HierarchyTree]

