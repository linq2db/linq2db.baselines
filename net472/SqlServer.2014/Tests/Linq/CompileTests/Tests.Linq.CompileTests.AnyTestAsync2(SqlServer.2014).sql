BeforeExecute
-- SqlServer.2014 SqlServer.2012 (asynchronously)
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1

SELECT
	CASE WHEN EXISTS(
		SELECT
			*
		FROM
			[Child] [c_1]
		WHERE
			[c_1].[ParentID] = @ParentID
	) THEN 1 ELSE 0 END

BeforeExecute
-- SqlServer.2014 SqlServer.2012 (asynchronously)
DECLARE @ParentID Int -- Int32
SET     @ParentID = -1

SELECT
	CASE WHEN EXISTS(
		SELECT
			*
		FROM
			[Child] [c_1]
		WHERE
			[c_1].[ParentID] = @ParentID
	) THEN 1 ELSE 0 END

