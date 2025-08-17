BeforeExecute
-- SqlServer.2016.MS SqlServer.2016 (asynchronously)

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]
INTERSECT
SELECT
	[p].[ParentID],
	[p].[ChildID]
FROM
	[Child] [p]
WHERE
	[p].[ParentID] = 3

