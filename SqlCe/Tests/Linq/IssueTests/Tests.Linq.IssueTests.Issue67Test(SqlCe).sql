-- SqlCe

SELECT
	[t2].[ParentID],
	[t2].[count_1]
FROM
	(
		SELECT
			[t].[ParentID],
			[t1].[count_1]
		FROM
			[Parent] [t]
				OUTER APPLY (
					SELECT
						COUNT(*) as [count_1]
					FROM
						[Child] [c_1]
					WHERE
						[t].[ParentID] = [c_1].[ParentID]
				) [t1]
	) [t2]
WHERE
	[t2].[count_1] > 0

