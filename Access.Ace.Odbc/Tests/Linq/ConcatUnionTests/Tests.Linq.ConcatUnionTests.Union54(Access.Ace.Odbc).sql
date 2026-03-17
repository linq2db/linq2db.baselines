-- Access.Ace.Odbc AccessODBC

SELECT
	[p1].[ParentID],
	[p1].[ParentID],
	[p1].[Value1],
	IIF(False, 0, NULL),
	IIF(False, 0, NULL),
	IIF(False, 0, NULL)
FROM
	[Parent] [p1]
UNION
SELECT
	IIF([t1].[Value1] IS NULL, 0, [t1].[Value1]),
	IIF(False, 0, NULL),
	IIF(False, 0, NULL),
	[t1].[ParentID],
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	(
		SELECT
			[p2].[Value1],
			(
				SELECT TOP 1
					[a_Children].[ParentID]
				FROM
					[Child] [a_Children]
				WHERE
					[p2].[ParentID] = [a_Children].[ParentID]
				ORDER BY
					[a_Children].[ChildID] DESC
			) as [ParentID],
			(
				SELECT TOP 1
					[a_Children_1].[ChildID]
				FROM
					[Child] [a_Children_1]
				WHERE
					[p2].[ParentID] = [a_Children_1].[ParentID]
				ORDER BY
					[a_Children_1].[ChildID] DESC
			) as [ChildID]
		FROM
			[Parent] [p2]
	) [t1]

