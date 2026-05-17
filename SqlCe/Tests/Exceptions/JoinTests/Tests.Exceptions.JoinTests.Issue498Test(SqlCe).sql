-- SqlCe

SELECT
	[x].[ParentID]
FROM
	[Parent] [x]
		INNER JOIN [Child] [y] ON [x].[ParentID] = [y].[ParentID]

-- SqlCe

SELECT DISTINCT
	[g_1].[ParentID] as [Key_1]
FROM
	[Parent] [g_1]
		INNER JOIN [Child] [y] ON [g_1].[ParentID] = [y].[ParentID]

