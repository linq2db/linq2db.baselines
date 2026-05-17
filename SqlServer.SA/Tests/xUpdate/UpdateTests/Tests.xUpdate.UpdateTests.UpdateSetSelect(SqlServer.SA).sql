-- SqlServer.SA SqlServer.2019

DELETE [t1]
FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] > 1000

-- SqlServer.SA SqlServer.2019

UPDATE
	[p]
SET
	[p].[ParentID] = (
		SELECT
			[c_2].[ParentID]
		FROM
			[Child] [c_2]
		WHERE
			[c_2].[ChildID] = 11
	) + 1000
FROM
	[Parent] [p]
		INNER JOIN [Child] [c_1] ON [p].[ParentID] = [c_1].[ParentID]
WHERE
	[p].[ParentID] = 1

-- SqlServer.SA SqlServer.2019
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1

UPDATE
	[Parent]
SET
	[ParentID] = @ParentID
WHERE
	[Parent].[ParentID] = 1001

