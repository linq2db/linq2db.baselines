BeforeExecute
-- SqlServer.2005

SELECT
	[p1].[ParentID],
	[p1].[Value1],
	[p2].[ParentID],
	[p2].[Sum1]
FROM
	[Parent] [p1]
		LEFT JOIN (
			SELECT
				[o].[ParentID],
				SUM([o].[ParentID]) as [Sum1]
			FROM
				[Parent] [o]
			WHERE
				[o].[ParentID] IN (
					SELECT
						[ch].[ParentID]
					FROM
						[Child] [ch]
				)
			GROUP BY
				[o].[ParentID]
		) [p2] ON [p2].[ParentID] = [p1].[ParentID]

