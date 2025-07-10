﻿BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

WITH [CTE_1] ([Id2], [Id1])
AS
(
	SELECT
		[p].[Value1],
		[p].[ParentID]
	FROM
		[Parent] [p]
	WHERE
		[p].[Value1] IS NOT NULL
),
[CTE_2] ([Id1], [Id2])
AS
(
	SELECT
		[c_1].[ParentID],
		[c_1].[Value1]
	FROM
		[Parent] [c_1]
	WHERE
		[c_1].[Value1] IS NOT NULL
),
[CTE_3] ([Id1], [Id2])
AS
(
	SELECT
		[t1].[Id1],
		[t1].[Id2]
	FROM
		[CTE_1] [t1]
	UNION ALL
	SELECT
		[t2].[Id1],
		[record2].[Id2]
	FROM
		[CTE_1] [t2]
			INNER JOIN [CTE_2] [record2] ON [t2].[Id2] = [record2].[Id1]
)
SELECT
	[t3].[Id1],
	[t3].[Id2]
FROM
	[CTE_3] [t3]

