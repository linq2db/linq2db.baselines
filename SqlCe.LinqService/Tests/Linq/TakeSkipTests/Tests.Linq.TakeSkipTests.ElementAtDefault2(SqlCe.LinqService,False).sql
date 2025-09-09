BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] > 1
ORDER BY
	[p].[ParentID]
OFFSET 300000 ROWS FETCH NEXT 1 ROWS ONLY 

