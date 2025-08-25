BeforeExecute
-- SqlServer.2025 SqlServer.2022 (asynchronously)
DECLARE @testValue Int -- Int32
SET     @testValue = 1

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[Value1] = @testValue

