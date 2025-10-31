-- SqlServer.2005.MS SqlServer.2005

WITH [CTE1_] ([ParentID])
AS
(
	SELECT
		[c_1].[ParentID]
	FROM
		[Child] [c_1]
	WHERE
		[c_1].[ParentID] > 1
),
[LAST0] ([ParentID], [ChildID])
AS
(
	SELECT
		[c4].[ParentID],
		[c4].[ChildID]
	FROM
		[Child] [c4]
	WHERE
		[c4].[ParentID] % 2 = 0
)
SELECT
	[c4_1].[ParentID],
	[c4_1].[ChildID]
FROM
	[CTE1_] [p]
		INNER JOIN [LAST0] [c4_1] ON [c4_1].[ParentID] = [p].[ParentID]

-- SqlServer.2005.MS SqlServer.2005

SELECT
	[c4].[ParentID],
	[c4].[ChildID]
FROM
	[Child] [p]
		INNER JOIN [Child] [c4] ON [c4].[ParentID] = [p].[ParentID]
WHERE
	[p].[ParentID] > 1 AND [c4].[ParentID] % 2 = 0

