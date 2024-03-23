BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	[p1].[ParentID],
	[p1].[Value1],
	[p2_1].[o],
	[p2_1].[Sum1]
FROM
	[Parent] [p1]
		LEFT JOIN (
			SELECT
				[p2].[ParentID] as [o],
				SUM([p2].[ParentID]) as [Sum1]
			FROM
				[Parent] [p2]
			WHERE
				[p2].[ParentID] IN (
					SELECT
						[ch].[ParentID]
					FROM
						[Child] [ch]
				)
			GROUP BY
				[p2].[ParentID]
		) [p2_1] ON [p2_1].[o] = [p1].[ParentID]

