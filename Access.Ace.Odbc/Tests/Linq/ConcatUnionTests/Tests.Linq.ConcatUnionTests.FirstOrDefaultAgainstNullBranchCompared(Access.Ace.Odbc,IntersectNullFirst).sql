-- Access.Ace.Odbc AccessODBC
SELECT DISTINCT
	[p].[ParentID]
FROM
	[Parent] [p]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT
					[p_1].[ParentID],
					(
						SELECT TOP 1
							[c_1].[ParentID]
						FROM
							[Child] [c_1]
						WHERE
							[c_1].[ParentID] = [p_1].[ParentID]
						ORDER BY
							[c_1].[ChildID]
					) as [ParentID_1],
					(
						SELECT TOP 1
							[c_2].[ChildID]
						FROM
							[Child] [c_2]
						WHERE
							[c_2].[ParentID] = [p_1].[ParentID]
						ORDER BY
							[c_2].[ChildID]
					) as [ChildID]
				FROM
					[Parent] [p_1]
			) [t1]
		WHERE
			[p].[ParentID] = [t1].[ParentID] AND [t1].[ParentID_1] IS NULL AND
			[t1].[ChildID] IS NULL
	)

-- Access.Ace.Odbc AccessODBC
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

-- Access.Ace.Odbc AccessODBC
SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

