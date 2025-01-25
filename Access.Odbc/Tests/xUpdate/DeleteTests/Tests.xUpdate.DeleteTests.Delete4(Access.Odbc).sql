BeforeExecute
-- Access.Odbc AccessODBC

DELETE FROM
	[GrandChild] [gc]
WHERE
	[gc].[GrandChildID] IN (1001, 1002)

BeforeExecute
-- Access.Odbc AccessODBC

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
-- Access.Odbc AccessODBC

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
-- Access.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[GrandChild] [gc]
WHERE
	[gc].[ParentID] = 1

BeforeExecute
-- Access.Odbc AccessODBC

DELETE FROM
	[GrandChild] [t1]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[GrandChild] [gc]
				INNER JOIN [Parent] [a_Parent] ON ([gc].[ParentID] = [a_Parent].[ParentID])
		WHERE
			[a_Parent].[ParentID] = 1 AND
			[gc].[GrandChildID] IN (1001, 1002) AND
			[t1].[ParentID] = [gc].[ParentID] AND
			[t1].[ChildID] = [gc].[ChildID] AND
			[t1].[GrandChildID] = [gc].[GrandChildID]
	)

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[GrandChild] [gc]
WHERE
	[gc].[ParentID] = 1

