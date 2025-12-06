-- SqlServer.2014.MS SqlServer.2014

DELETE [t1]
FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] > 1000

-- SqlServer.2014.MS SqlServer.2014

UPDATE
	[p]
SET
	[p].[ParentID] = [c_2].[ParentID] + 1000
FROM
	[Parent] [p]
		INNER JOIN [Child] [c_1] ON [p].[ParentID] = [c_1].[ParentID]
		LEFT JOIN [Child] [c_2] ON [c_2].[ChildID] = 11
WHERE
	[p].[ParentID] = 1

-- SqlServer.2014.MS SqlServer.2014
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1

UPDATE
	[Parent]
SET
	[ParentID] = @ParentID
WHERE
	[Parent].[ParentID] = 1001

