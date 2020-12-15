BeforeExecute
-- SqlServer.2014 SqlServer.2012
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[Child] [c_1]
		WHERE
			[c_1].[ParentID] = @ParentID
	), 1, 0)

BeforeExecute
-- SqlServer.2014 SqlServer.2012
DECLARE @ParentID Int -- Int32
SET     @ParentID = -1

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[Child] [c_1]
		WHERE
			[c_1].[ParentID] = @ParentID
	), 1, 0)

