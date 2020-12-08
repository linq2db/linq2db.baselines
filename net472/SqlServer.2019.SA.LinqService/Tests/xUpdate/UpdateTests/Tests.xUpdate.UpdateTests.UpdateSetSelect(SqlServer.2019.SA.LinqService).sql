BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

DELETE [t1]
FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] > 1000

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

UPDATE
	[p]
SET
	[p].[ParentID] = (
		SELECT
			[c_1].[ParentID]
		FROM
			[Child] [c_1]
		WHERE
			[c_1].[ChildID] = 11
	) + 1000
FROM
	[Parent] [p]
		INNER JOIN [Child] [c_2] ON [p].[ParentID] = [c_2].[ParentID]
WHERE
	[p].[ParentID] = 1

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1

UPDATE
	[_]
SET
	[_].[ParentID] = @ParentID
FROM
	[Parent] [_]
WHERE
	[_].[ParentID] = 1001

