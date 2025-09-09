BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	[t].[ParentID],
	[t].[Value1]
FROM
	[Parent] [t]

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @param Integer -- Int32
SET     @param = 1

SELECT
	[t].[ParentID],
	[t].[Value1]
FROM
	[Parent] [t]
WHERE
	[t].[Value1] = @param

