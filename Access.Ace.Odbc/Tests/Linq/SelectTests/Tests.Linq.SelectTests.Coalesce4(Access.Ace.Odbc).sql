-- Access.Ace.Odbc AccessODBC

SELECT
	IIF([t1].[Value1] IS NULL, [t1].[ChildID], [t1].[Value1])
FROM
	(
		SELECT
			(
				SELECT TOP 1
					[a_Parent].[Value1]
				FROM
					[Child] [ch]
						LEFT JOIN [Parent] [a_Parent] ON ([ch].[ParentID] = [a_Parent].[ParentID])
				WHERE
					[ch].[ChildID] = [c_1].[ChildID]
			) as [Value1],
			[c_1].[ChildID]
		FROM
			[Child] [c_1]
	) [t1]

