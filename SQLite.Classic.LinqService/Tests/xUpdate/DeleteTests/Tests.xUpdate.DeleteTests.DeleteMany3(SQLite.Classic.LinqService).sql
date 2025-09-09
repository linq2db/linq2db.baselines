BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

DELETE FROM
	[GrandChild]
WHERE
	[GrandChild].[ParentID] >= 1000

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

DELETE FROM
	[Child]
WHERE
	[Child].[ParentID] >= 1000

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

DELETE FROM
	[Parent]
WHERE
	[Parent].[ParentID] >= 1000

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

INSERT INTO [Parent]
(
	[ParentID]
)
VALUES
(
	1001
)

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

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
-- SQLite.Classic SQLite (asynchronously)

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
-- SQLite.Classic SQLite (asynchronously)

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
-- SQLite.Classic SQLite (asynchronously)

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

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

DELETE FROM
	[GrandChild]
WHERE
	[GrandChild].[ParentID] >= 1000

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

DELETE FROM
	[Child]
WHERE
	[Child].[ParentID] >= 1000

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

DELETE FROM
	[Parent]
WHERE
	[Parent].[ParentID] >= 1000

