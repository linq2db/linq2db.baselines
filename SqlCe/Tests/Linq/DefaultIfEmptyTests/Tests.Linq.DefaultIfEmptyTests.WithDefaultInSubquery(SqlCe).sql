-- SqlCe

SELECT
	[t2].[SUM_1]
FROM
	[Parent] [p]
		OUTER APPLY (
			SELECT
				SUM(CASE
					WHEN [d].[ParentID] IS NOT NULL THEN [d].[ParentID]
					ELSE -100
				END) as [SUM_1]
			FROM
				(
					SELECT
						1 as [c1]
				) [t1]
					LEFT JOIN [Child] [d] ON [p].[ParentID] = [d].[ParentID]
		) [t2]

