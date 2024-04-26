BeforeExecute
-- Sybase.Managed Sybase

DELETE FROM [GrandChild]
FROM
	[GrandChild] [c_1]
WHERE
	[c_1].[ParentID] >= 1000

BeforeExecute
-- Sybase.Managed Sybase

DELETE FROM [Child]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] >= 1000

BeforeExecute
-- Sybase.Managed Sybase

DELETE FROM [Parent]
FROM
	[Parent] [c_1]
WHERE
	[c_1].[ParentID] >= 1000

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [Parent]
(
	[ParentID]
)
VALUES
(
	1001
)

BeforeExecute
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

BeforeExecute
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

BeforeExecute
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

BeforeExecute
-- Sybase.Managed Sybase

DELETE FROM [GrandChild]
FROM
	[Parent] [gc]
		INNER JOIN [Child] [a_Children] ON [gc].[ParentID] = [a_Children].[ParentID]
		INNER JOIN [GrandChild] [a_GrandChildren] ON [a_Children].[ParentID] = [a_GrandChildren].[ParentID] AND [a_Children].[ChildID] = [a_GrandChildren].[ChildID]
WHERE
	[gc].[ParentID] IN (1001)

BeforeExecute
-- Sybase.Managed Sybase

DELETE FROM [GrandChild]
FROM
	[GrandChild] [c_1]
WHERE
	[c_1].[ParentID] >= 1000

BeforeExecute
-- Sybase.Managed Sybase

DELETE FROM [Child]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] >= 1000

BeforeExecute
-- Sybase.Managed Sybase

DELETE FROM [Parent]
FROM
	[Parent] [c_1]
WHERE
	[c_1].[ParentID] >= 1000

