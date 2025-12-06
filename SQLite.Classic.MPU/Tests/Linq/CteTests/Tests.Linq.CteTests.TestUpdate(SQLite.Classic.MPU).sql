-- SQLite.Classic.MPU SQLite.Classic SQLite

WITH [CTE_1] ([ParentID])
AS
(
	SELECT
		[c_1].[ParentID]
	FROM
		[CteChild] [c_1]
	WHERE
		[c_1].[ParentID] % 2 = 0
)
UPDATE
	[CteChild]
SET
	[ParentID] = [CteChild].[ChildID]
FROM
	[CTE_1] [ct]
WHERE
	[ct].[ParentID] = [CteChild].[ParentID]

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[c_1].[ChildID],
	[c_1].[ParentID]
FROM
	[CteChild] [c_1]
WHERE
	[c_1].[ParentID] % 2 = 0

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[c_1].[ChildID]
FROM
	[CteChild] [c_1]
WHERE
	[c_1].[ParentID] % 2 = 0

