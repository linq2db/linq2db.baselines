BeforeExecute
-- Sybase.Managed Sybase

UPDATE
	[Parent]
SET
	[p2].[ParentID] = [p1].[ParentID]
FROM
	[Parent] [p2],
	[Parent] [p1]
WHERE
	[p1].[ParentID] < 3 AND [p1].[ParentID] = [p2].[ParentID]

