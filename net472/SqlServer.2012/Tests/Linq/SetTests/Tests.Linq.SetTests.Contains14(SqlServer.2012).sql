BeforeExecute
-- SqlServer.2012
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[Parent] [p]
		WHERE
			[p].[ParentID] = 1 AND [p].[ParentID] = @ParentID
	), 1, 0)

BeforeExecute
-- SqlServer.2012
DECLARE @ParentID Int -- Int32
SET     @ParentID = 2

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[Parent] [p]
		WHERE
			[p].[ParentID] = 1 AND [p].[ParentID] = @ParentID
	), 1, 0)

