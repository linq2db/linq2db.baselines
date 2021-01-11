BeforeExecute
-- SqlServer.2012
DECLARE @Local_id Int -- Int32
SET     @Local_id = 1

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @Local_id

