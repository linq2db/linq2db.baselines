-- SqlServer.2019
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1

SELECT
	IIF(@ParentID IN (
		SELECT
			[c_1].[ParentID]
		FROM
			[Child] [c_1]
	), 1, 0)

-- SqlServer.2019
DECLARE @ParentID Int -- Int32
SET     @ParentID = -1

SELECT
	IIF(@ParentID IN (
		SELECT
			[c_1].[ParentID]
		FROM
			[Child] [c_1]
	), 1, 0)

