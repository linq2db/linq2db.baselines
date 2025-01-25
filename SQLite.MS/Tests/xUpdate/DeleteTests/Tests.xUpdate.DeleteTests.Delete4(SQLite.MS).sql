BeforeExecute
-- SQLite.MS SQLite

DELETE FROM
	[GrandChild]
WHERE
	[GrandChild].[GrandChildID] IN (1001, 1002)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	1,
	1,
	1001
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	1,
	2,
	1002
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	COUNT(*)
FROM
	[GrandChild] [gc]
WHERE
	[gc].[ParentID] = 1

BeforeExecute
-- SQLite.MS SQLite

DELETE FROM
	[GrandChild]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[GrandChild] [gc]
				INNER JOIN [Parent] [a_Parent] ON [gc].[ParentID] = [a_Parent].[ParentID]
		WHERE
			[a_Parent].[ParentID] = 1 AND
			[gc].[GrandChildID] IN (1001, 1002) AND
			[GrandChild].[ParentID] = [gc].[ParentID] AND
			[GrandChild].[ChildID] = [gc].[ChildID] AND
			[GrandChild].[GrandChildID] = [gc].[GrandChildID]
	)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	COUNT(*)
FROM
	[GrandChild] [gc]
WHERE
	[gc].[ParentID] = 1

