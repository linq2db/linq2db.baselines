-- Access.Jet.Odbc AccessODBC
SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
		LEFT JOIN (
			SELECT
				[c_1].[ParentID]
			FROM
				[Child] [c_1]
			WHERE
				[c_1].[ParentID] > 0
		) [ch] ON ([p].[ParentID] = [ch].[ParentID])

