BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[key_data_result].[ParentID],
	[key_data_result].[Value1],
	[_ch].[ParentID],
	[_ch].[ChildID]
FROM
	(
		SELECT DISTINCT
			[p].[ParentID],
			[p].[Value1]
		FROM
			[Parent] [p]
		WHERE
			[p].[ParentID] = 1
	) [key_data_result]
		INNER JOIN [Child] [_ch] ON ([_ch].[ParentID] = [key_data_result].[ParentID])

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[t2].[p1],
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
		LEFT JOIN (
			SELECT
				Count(*) as [p1],
				[t1].[ParentID]
			FROM
				[Child] [t1]
			GROUP BY
				[t1].[ParentID]
		) [t2] ON ([p].[ParentID] = [t2].[ParentID])
WHERE
	[p].[ParentID] = 1

