-- SqlServer.2022.MS SqlServer.2022
SELECT
	[p].[ParentID],
	(
		SELECT
			COUNT(*)
		FROM
			(
				SELECT DISTINCT
					[a_Children].[ChildID]
				FROM
					[Child] [a_Children]
				WHERE
					[p].[ParentID] = [a_Children].[ParentID]
			) [t1]
	),
	(
		SELECT
			COUNT(*)
		FROM
			(
				SELECT DISTINCT
					[x].[ChildID] as [WithPredicate]
				FROM
					[Child] [x]
				WHERE
					[p].[ParentID] = [x].[ParentID] AND [x].[ChildID] > 20
			) [t2]
	),
	(
		SELECT
			COUNT(*)
		FROM
			(
				SELECT DISTINCT
					[x_1].[ChildID] as [AfterWhere]
				FROM
					[Child] [x_1]
				WHERE
					[p].[ParentID] = [x_1].[ParentID] AND [x_1].[ChildID] > 20
			) [t3]
	)
FROM
	[Parent] [p]
ORDER BY
	[p].[ParentID]

-- SqlServer.2022.MS SqlServer.2022
SELECT
	[m_1].[ParentID],
	[d].[ParentID],
	[d].[ChildID]
FROM
	(
		SELECT DISTINCT
			[t1].[ParentID]
		FROM
			[Parent] [t1]
	) [m_1]
		INNER JOIN [Child] [d] ON [m_1].[ParentID] = [d].[ParentID]

-- SqlServer.2022.MS SqlServer.2022
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

