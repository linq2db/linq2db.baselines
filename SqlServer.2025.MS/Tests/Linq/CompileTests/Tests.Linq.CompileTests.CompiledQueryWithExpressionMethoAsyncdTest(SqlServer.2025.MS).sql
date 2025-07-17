BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022 (asynchronously)
DECLARE @p Int -- Int32
SET     @p = 1

SELECT TOP (1)
	[x].[ParentID],
	[x].[Value1]
FROM
	[Parent] [x]
WHERE
	[x].[ParentID] = @p
ORDER BY
	[x].[ParentID] DESC

