-- SqlServer.2008

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
	[u]
SET
	[u].[ParentID] = [u].[ChildID]
FROM
	[CteChild] [u],
	[CTE_1] [ct]
WHERE
	[ct].[ParentID] = [u].[ParentID]

-- SqlServer.2008

SELECT
	[c_1].[ChildID],
	[c_1].[ParentID]
FROM
	[CteChild] [c_1]
WHERE
	[c_1].[ParentID] % 2 = 0

-- SqlServer.2008

SELECT
	[c_1].[ChildID]
FROM
	[CteChild] [c_1]
WHERE
	[c_1].[ParentID] % 2 = 0

