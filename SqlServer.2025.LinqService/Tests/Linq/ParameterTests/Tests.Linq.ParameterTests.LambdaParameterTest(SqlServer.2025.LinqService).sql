BeforeExecute
-- SqlServer.2025 SqlServer.2022 (asynchronously)
DECLARE @p Int -- Int32
SET     @p = 1

SELECT
	[r].[ParentID],
	[r].[Value1]
FROM
	[Parent] [r]
WHERE
	[r].[ParentID] = @p

BeforeExecute
-- SqlServer.2025 SqlServer.2022 (asynchronously)

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

