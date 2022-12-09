BeforeExecute
-- SqlServer.2017

SELECT
	[a_Parent_1].[ParentID]
FROM
	(
		SELECT
			[t2].[c1],
			[t2].[Value1]
		FROM
			(
				SELECT
					[a_Parent].[ParentID] as [c1],
					[a_Parent].[Value1]
				FROM
					[Child] [t1]
						LEFT JOIN [Parent] [a_Parent] ON [t1].[ParentID] = [a_Parent].[ParentID]
			) [t2]
		GROUP BY
			[t2].[c1],
			[t2].[Value1]
		HAVING
			Count(*) > 2
	) [cp]
		INNER JOIN [Child] [c_1]
			LEFT JOIN [Parent] [a_Parent_1] ON [c_1].[ParentID] = [a_Parent_1].[ParentID]
		ON [cp].[c1] = [a_Parent_1].[ParentID] AND ([cp].[Value1] = [a_Parent_1].[Value1] OR [cp].[Value1] IS NULL AND [a_Parent_1].[Value1] IS NULL)

