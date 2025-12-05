-- SqlServer.2025 SqlServer.2022
DECLARE @n Int -- Int32
SET     @n = 300000

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] > 1
ORDER BY
	1
OFFSET @n ROWS FETCH NEXT 1 ROWS ONLY 

