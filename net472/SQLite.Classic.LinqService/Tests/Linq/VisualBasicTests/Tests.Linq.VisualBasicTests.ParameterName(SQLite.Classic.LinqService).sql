BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Local_id  -- Int32
SET     @Local_id = 1

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @Local_id

