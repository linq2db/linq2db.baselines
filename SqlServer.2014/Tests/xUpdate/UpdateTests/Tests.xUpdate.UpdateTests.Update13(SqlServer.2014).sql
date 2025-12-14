-- SqlServer.2014

UPDATE
	[p2]
SET
	[p2].[ParentID] = [p1].[ParentID]
FROM
	[Parent] [p1]
		INNER JOIN [Parent] [p2] ON [p1].[ParentID] = [p2].[ParentID]
WHERE
	[p1].[ParentID] < 3

