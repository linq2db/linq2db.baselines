-- SqlServer.2008.MS SqlServer.2008
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1

SELECT
	CASE
		WHEN @ParentID IN (
			SELECT
				[p].[ParentID]
			FROM
				[Parent] [p]
			WHERE
				[p].[ParentID] = 1
		)
			THEN 1
		ELSE 0
	END

-- SqlServer.2008.MS SqlServer.2008
DECLARE @ParentID Int -- Int32
SET     @ParentID = 2

SELECT
	CASE
		WHEN @ParentID IN (
			SELECT
				[p].[ParentID]
			FROM
				[Parent] [p]
			WHERE
				[p].[ParentID] = 1
		)
			THEN 1
		ELSE 0
	END

