-- Access.Jet.Odbc AccessODBC

SELECT
	[p].[ParentID],
	[p].[ParentID] as [ParentID_1],
	[p].[Value1],
	IIF(False, 0, NULL) as [ch],
	IIF(False, 0, NULL) as [ParentID_2],
	IIF(False, 0, NULL) as [ChildID]
FROM
	[Parent] [p]
UNION
SELECT
	IIF([t1].[Value1] IS NULL, 0, [t1].[Value1]) as [ParentID],
	IIF(False, 0, NULL) as [ParentID_1],
	IIF(False, 0, NULL) as [Value1],
	[t1].[ParentID] as [ch],
	[t1].[ParentID] as [ParentID_2],
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

