BeforeExecute
-- SqlCe

SELECT
	[t1].[max_1]
FROM
	[Parent] [p]
		LEFT JOIN (
			SELECT
				Max([_].[ParentID]) as [max_1],
				[_].[ParentID]
			FROM
				[Child] [_]
			WHERE
				[_].[ParentID] < 0
			GROUP BY
				[_].[ParentID]
		) [t1] ON [p].[ParentID] = [t1].[ParentID]

