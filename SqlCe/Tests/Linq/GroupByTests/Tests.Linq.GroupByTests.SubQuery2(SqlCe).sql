-- SqlCe
DECLARE @n Int -- Int32
SET     @n = 1

SELECT DISTINCT
	[g_1].[ParentID] + 1 as [ParentID]
FROM
	[Child] [g_1]
WHERE
	[g_1].[ParentID] + 1 > @n

