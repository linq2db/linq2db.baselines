BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[x].[ParentID],
	[x].[ChildID],
	[x].[GrandChildID]
FROM
	[GrandChild] [x]
WHERE
	[x].[ParentID] IN (2)

BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[x].[ParentID],
	[x].[ChildID],
	[x].[GrandChildID]
FROM
	[GrandChild] [x]
WHERE
	[x].[ParentID] IN (3)

