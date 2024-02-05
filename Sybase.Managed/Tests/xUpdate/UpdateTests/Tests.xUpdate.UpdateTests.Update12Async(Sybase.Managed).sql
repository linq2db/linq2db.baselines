BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

UPDATE
	[Parent]
SET
	[p1].[ParentID] = [p2].[ParentID]
FROM
	[Parent] [p1]
		INNER JOIN [Parent] [p2] ON [p1].[ParentID] = [p2].[ParentID]
WHERE
	[p1].[ParentID] < 3

