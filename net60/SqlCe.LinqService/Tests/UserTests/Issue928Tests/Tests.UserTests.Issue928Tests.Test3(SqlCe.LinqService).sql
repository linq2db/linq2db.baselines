BeforeExecute
-- SqlCe

SELECT
	[p1].[ParentID],
	[p1].[Value1],
	[o].[ParentID],
	[o].[Sum1]
FROM
	[Parent] [p1]
		LEFT JOIN (
			SELECT
				[p].[ParentID],
				Sum([p].[ParentID]) as [Sum1]
			FROM
				[Parent] [p]
			WHERE
				[p].[ParentID] IN (
					SELECT
						[ch].[ParentID]
					FROM
						[Child] [ch]
				)
			GROUP BY
				[p].[ParentID]
		) [o] ON [o].[ParentID] = [p1].[ParentID]

