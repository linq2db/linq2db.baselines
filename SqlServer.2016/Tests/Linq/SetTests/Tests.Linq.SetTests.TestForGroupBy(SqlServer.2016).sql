-- SqlServer.2016

SELECT
	[x].[ParentID],
	[x].[ChildID],
	[x].[GrandChildID]
FROM
	[GrandChild] [x]
WHERE
	[x].[ParentID] IN (2)

-- SqlServer.2016

SELECT
	[x].[ParentID],
	[x].[ChildID],
	[x].[GrandChildID]
FROM
	[GrandChild] [x]
WHERE
	[x].[ParentID] IN (3)

