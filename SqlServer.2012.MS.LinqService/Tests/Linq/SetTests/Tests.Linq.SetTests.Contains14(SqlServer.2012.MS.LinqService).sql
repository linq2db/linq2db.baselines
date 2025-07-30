BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1

SELECT
	IIF(@ParentID IN (
		SELECT
			[p].[ParentID]
		FROM
			[Parent] [p]
		WHERE
			[p].[ParentID] = 1
	), 1, 0)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @ParentID Int -- Int32
SET     @ParentID = 2

SELECT
	IIF(@ParentID IN (
		SELECT
			[p].[ParentID]
		FROM
			[Parent] [p]
		WHERE
			[p].[ParentID] = 1
	), 1, 0)

