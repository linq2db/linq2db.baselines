-- SQLite.Classic.MPM SQLite.Classic SQLite

DELETE FROM
	[GrandChild]
WHERE
	[GrandChild].[ParentID] >= 1000

-- SQLite.Classic.MPM SQLite.Classic SQLite

DELETE FROM
	[Child]
WHERE
	[Child].[ParentID] >= 1000

-- SQLite.Classic.MPM SQLite.Classic SQLite

DELETE FROM
	[Parent]
WHERE
	[Parent].[ParentID] >= 1000

-- SQLite.Classic.MPM SQLite.Classic SQLite

INSERT INTO [Parent]
(
	[ParentID]
)
VALUES
(
	1001
)

-- SQLite.Classic.MPM SQLite.Classic SQLite

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

-- SQLite.Classic.MPM SQLite.Classic SQLite

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

-- SQLite.Classic.MPM SQLite.Classic SQLite

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

-- SQLite.Classic.MPM SQLite.Classic SQLite

DELETE FROM
	[GrandChild]
WHERE
	EXISTS(
		SELECT
			[a_GrandChildren].[ParentID],
			[a_GrandChildren].[ChildID]
		FROM
			[Parent] [gc]
				INNER JOIN [Child] [a_Children] ON [gc].[ParentID] = [a_Children].[ParentID]
				INNER JOIN [GrandChild] [a_GrandChildren] ON [a_Children].[ParentID] = [a_GrandChildren].[ParentID] AND [a_Children].[ChildID] = [a_GrandChildren].[ChildID]
		WHERE
			[gc].[ParentID] IN (1001) AND
			[GrandChild].[ParentID] = [a_GrandChildren].[ParentID] AND
			[GrandChild].[ChildID] = [a_GrandChildren].[ChildID] AND
			[GrandChild].[GrandChildID] = [a_GrandChildren].[GrandChildID]
	)

-- SQLite.Classic.MPM SQLite.Classic SQLite

DELETE FROM
	[GrandChild]
WHERE
	[GrandChild].[ParentID] >= 1000

-- SQLite.Classic.MPM SQLite.Classic SQLite

DELETE FROM
	[Child]
WHERE
	[Child].[ParentID] >= 1000

-- SQLite.Classic.MPM SQLite.Classic SQLite

DELETE FROM
	[Parent]
WHERE
	[Parent].[ParentID] >= 1000

