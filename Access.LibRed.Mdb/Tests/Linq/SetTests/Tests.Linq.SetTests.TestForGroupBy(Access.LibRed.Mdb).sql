-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[x].[ParentID],
	[x].[ChildID],
	[x].[GrandChildID]
FROM
	[GrandChild] [x]
WHERE
	[x].[ParentID] IN (2)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[x].[ParentID],
	[x].[ChildID],
	[x].[GrandChildID]
FROM
	[GrandChild] [x]
WHERE
	[x].[ParentID] IN (3)

