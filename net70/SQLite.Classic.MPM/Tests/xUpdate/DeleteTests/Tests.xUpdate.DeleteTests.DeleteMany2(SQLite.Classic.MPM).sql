BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

INSERT INTO [Parent]
(
	[ParentID]
)
VALUES
(
	1001
)

BeforeExecute
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

BeforeExecute
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

BeforeExecute
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

BeforeExecute
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
	3
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

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

BeforeExecute
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
	2,
	1
)

BeforeExecute
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
	2,
	2
)

BeforeExecute
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
	2,
	3
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DELETE FROM
	[GrandChild]
WHERE
	EXISTS(
		SELECT
			[a_Children].[ParentID]
		FROM
			[Parent] [p]
				INNER JOIN [Child] [a_Children] ON [p].[ParentID] = [a_Children].[ParentID]
				INNER JOIN [GrandChild] [a_GrandChildren] ON [a_Children].[ParentID] = [a_GrandChildren].[ParentID] AND [a_Children].[ChildID] = [a_GrandChildren].[ChildID]
		WHERE
			[p].[ParentID] >= 1000 AND
			[GrandChild].[ParentID] = [a_GrandChildren].[ParentID] AND
			[GrandChild].[ChildID] = [a_GrandChildren].[ChildID] AND
			[GrandChild].[GrandChildID] = [a_GrandChildren].[GrandChildID]
	)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DELETE FROM
	[Child]
WHERE
	EXISTS(
		SELECT
			[a_Children].[ParentID]
		FROM
			[Parent] [p]
				INNER JOIN [Child] [a_Children] ON [p].[ParentID] = [a_Children].[ParentID]
		WHERE
			[p].[ParentID] >= 1000 AND [Child].[ParentID] = [a_Children].[ParentID] AND
			[Child].[ChildID] = [a_Children].[ChildID]
	)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DELETE FROM
	[GrandChild]
WHERE
	[GrandChild].[ParentID] >= 1000

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DELETE FROM
	[Child]
WHERE
	[Child].[ParentID] >= 1000

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DELETE FROM
	[Parent]
WHERE
	[Parent].[ParentID] >= 1000

