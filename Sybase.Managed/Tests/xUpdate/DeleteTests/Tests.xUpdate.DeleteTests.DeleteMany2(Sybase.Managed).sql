-- Sybase.Managed Sybase

INSERT INTO [Parent]
(
	[ParentID]
)
VALUES
(
	1001
)

-- Sybase.Managed Sybase

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	1001,
	1
)

-- Sybase.Managed Sybase

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	1001,
	1,
	1
)

-- Sybase.Managed Sybase

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	1001,
	1,
	2
)

-- Sybase.Managed Sybase

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	1001,
	1,
	3
)

-- Sybase.Managed Sybase

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	1001,
	2
)

-- Sybase.Managed Sybase

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	1001,
	2,
	1
)

-- Sybase.Managed Sybase

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	1001,
	2,
	2
)

-- Sybase.Managed Sybase

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	1001,
	2,
	3
)

-- Sybase.Managed Sybase

DELETE FROM [GrandChild]
FROM
	[Parent] [p]
		INNER JOIN [Child] [a_Children] ON [p].[ParentID] = [a_Children].[ParentID]
		INNER JOIN [GrandChild] [a_GrandChildren] ON [a_Children].[ParentID] = [a_GrandChildren].[ParentID] AND [a_Children].[ChildID] = [a_GrandChildren].[ChildID]
WHERE
	[p].[ParentID] >= 1000

-- Sybase.Managed Sybase

DELETE FROM [Child]
FROM
	[Parent] [p]
		INNER JOIN [Child] [a_Children] ON [p].[ParentID] = [a_Children].[ParentID]
WHERE
	[p].[ParentID] >= 1000

-- Sybase.Managed Sybase

DELETE FROM [GrandChild]
FROM
	[GrandChild] [c_1]
WHERE
	[c_1].[ParentID] >= 1000

-- Sybase.Managed Sybase

DELETE FROM [Child]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] >= 1000

-- Sybase.Managed Sybase

DELETE FROM [Parent]
FROM
	[Parent] [c_1]
WHERE
	[c_1].[ParentID] >= 1000

