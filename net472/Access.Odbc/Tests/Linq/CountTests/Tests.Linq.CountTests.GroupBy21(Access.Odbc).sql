BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @n Int -- Int32
SET     @n = 1
DECLARE @n Int -- Int32
SET     @n = 1

SELECT
	Count([t1].[ParentID])
FROM
	(
		SELECT
			[ch].[ParentID] + 1 as [c1],
			[ch].[ChildID]
		FROM
			[Child] [ch]
		WHERE
			[ch].[ParentID] + 2 > ?
	) [t2]
		LEFT JOIN (
			SELECT
				[ch_1].[ParentID],
				[ch_1].[ChildID]
			FROM
				[Child] [ch_1]
			WHERE
				[ch_1].[ParentID] < 2 AND [ch_1].[ParentID] + 2 > ?
			GROUP BY
				[ch_1].[ParentID],
				[ch_1].[ChildID]
		) [t1] ON (([t2].[c1] = [t1].[ParentID] + 1 AND [t2].[ChildID] = [t1].[ChildID]))
GROUP BY
	[t2].[c1],
	[t2].[ChildID]

