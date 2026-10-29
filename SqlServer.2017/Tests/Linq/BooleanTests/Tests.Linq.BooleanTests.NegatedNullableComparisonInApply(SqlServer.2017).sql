-- SqlServer.2017
SELECT
	[p].[ParentID],
	[c_2].[IsOne]
FROM
	[Parent] [p]
		CROSS APPLY (
			SELECT TOP (1)
				IIF([c_1].[Value1] = 1, 1, 0) as [IsOne]
			FROM
				[Parent] [c_1]
			WHERE
				[c_1].[ParentID] = [p].[ParentID] AND ([c_1].[Value1] <> 1 OR [c_1].[Value1] IS NULL)
		) [c_2]

-- SqlServer.2017
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

-- SqlServer.2017
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

-- SqlServer.2017
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

