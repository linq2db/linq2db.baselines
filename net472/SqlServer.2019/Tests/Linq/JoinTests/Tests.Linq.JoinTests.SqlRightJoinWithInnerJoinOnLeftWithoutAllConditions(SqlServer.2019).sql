BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT
	[left_1].[ParentID],
	[left_1].[Value1],
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [left_1]
		RIGHT JOIN (
			SELECT
				[right_1].[Value1],
				[right_1].[ParentID]
			FROM
				[Parent] [right_1]
					INNER JOIN [Parent] [right2] ON [right_1].[Value1] = [right2].[Value1] + 2
		) [t1] ON [t1].[Value1] + 2 = [left_1].[Value1]
ORDER BY
	[left_1].[ParentID]

