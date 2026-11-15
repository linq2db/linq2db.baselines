-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[p_1].[ParentID],
	[p_1].[Sum_1]
FROM
	(
		SELECT
			CASE
				WHEN [t1].[Sum_1] IS NULL THEN 0
				ELSE [t1].[Sum_1]
			END / 2 as [Sum_1],
			[p].[ParentID]
		FROM
			[Parent] [p]
				OUTER APPLY (
					SELECT
						SUM([a_Children].[ParentID]) as [Sum_1]
					FROM
						[Child] [a_Children]
					WHERE
						[p].[ParentID] = [a_Children].[ParentID]
				) [t1]
	) [p_1]
WHERE
	[p_1].[Sum_1] > 1

