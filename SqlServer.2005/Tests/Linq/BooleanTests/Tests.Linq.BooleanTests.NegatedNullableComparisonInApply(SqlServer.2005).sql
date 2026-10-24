-- SqlServer.2005
SELECT
	[p].[ParentID],
	[c_2].[IsOne]
FROM
	[Parent] [p]
		CROSS APPLY (
			SELECT TOP (1)
				CASE
					WHEN [c_1].[Value1] = 1 THEN 1
					ELSE 0
				END as [IsOne]
			FROM
				[Parent] [c_1]
			WHERE
				[c_1].[ParentID] = [p].[ParentID] AND NOT ([c_1].[Value1] = 1 AND [c_1].[Value1] IS NOT NULL)
		) [c_2]

-- SqlServer.2005
SELECT
	[p].[ParentID]
FROM
	[Parent] [p]
		CROSS APPLY (
			SELECT TOP (1)
				1 as [c1]
			FROM
				[Parent] [c_1]
			WHERE
				[c_1].[ParentID] = [p].[ParentID] AND NOT ([c_1].[Value1] = 1 AND [c_1].[Value1] IS NOT NULL OR [c_1].[ParentID] = 3)
		) [c_2]

