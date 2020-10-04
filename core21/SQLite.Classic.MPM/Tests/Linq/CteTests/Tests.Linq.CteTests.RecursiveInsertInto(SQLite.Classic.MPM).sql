﻿BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE [HierarchyTree]
(
	[Id]       INTEGER NOT NULL,
	[ParentId] INTEGER     NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

INSERT INTO [HierarchyTree]
(
	[Id],
	[ParentId]
)
VALUES
(1,NULL),
(2,NULL),
(10,1),
(11,1),
(20,2),
(22,2),
(100,10),
(101,10),
(102,10),
(110,11),
(111,11),
(112,11),
(200,20),
(201,20),
(202,20),
(210,21),
(211,21),
(212,21)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE [HierarchyData]
(
	[Id]    INTEGER NOT NULL,
	[Level] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

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
INSERT INTO [HierarchyData]
(
	[Id],
	[Level]
)
SELECT
	[t2].[Id],
	[t2].[Level]
FROM
	[hierarchyDown] [t2]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Level]
FROM
	[HierarchyData] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE [HierarchyData]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE [HierarchyTree]

