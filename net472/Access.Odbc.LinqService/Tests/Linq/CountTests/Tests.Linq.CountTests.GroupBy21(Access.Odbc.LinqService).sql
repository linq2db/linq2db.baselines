BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @n Int -- Int32
SET     @n = -1
DECLARE @n_1 Int -- Int32
SET     @n_1 = -1

SELECT
	Count([t1].[ParentID])
FROM
	[Child] [ch_1]
		LEFT JOIN (
			SELECT
				[ch].[ParentID],
				[ch].[ChildID]
			FROM
				[Child] [ch]
			WHERE
				[ch].[ParentID] < 2 AND [ch].[ParentID] > ?
			GROUP BY
				[ch].[ParentID],
				[ch].[ChildID]
		) [t1] ON (([ch_1].[ParentID] + 1 = [t1].[ParentID] + 1 AND [ch_1].[ChildID] = [t1].[ChildID]))
WHERE
	[ch_1].[ParentID] > ?
GROUP BY
	[ch_1].[ParentID] + 1,
	[ch_1].[ChildID]

