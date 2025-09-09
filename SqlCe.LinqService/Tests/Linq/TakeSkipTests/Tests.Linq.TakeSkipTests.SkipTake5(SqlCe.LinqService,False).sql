BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]
ORDER BY
	[t1].[ParentID]
OFFSET 2 ROWS FETCH NEXT 5 ROWS ONLY 

