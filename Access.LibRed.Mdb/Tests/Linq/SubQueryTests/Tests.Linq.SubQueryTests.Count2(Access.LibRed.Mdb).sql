-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[p_1].[ParentID],
	[p_1].[Value1]
FROM
	(
		SELECT
			Fix(CASE
				WHEN [t1].[Value1] IS NULL THEN 0
				ELSE [t1].[Value1]
			END / 2) as [Value1],
			[p].[ParentID]
		FROM
			[Parent] [p]
				OUTER APPLY (
					SELECT
						SUM([a_Children].[ParentID]) as [Value1]
					FROM
						[Child] [a_Children]
					WHERE
						[p].[ParentID] = [a_Children].[ParentID] AND [a_Children].[ParentID] > 0
				) [t1]
	) [p_1]
WHERE
	[p_1].[Value1] > 1

