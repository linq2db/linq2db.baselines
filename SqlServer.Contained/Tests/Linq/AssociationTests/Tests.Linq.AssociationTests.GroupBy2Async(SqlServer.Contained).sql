BeforeExecute
BeginTransactionAsync(RepeatableRead)
BeforeExecute
-- SqlServer.Contained SqlServer.2019 (asynchronously)

SELECT
	[m_1].[ParentID],
	[d].[ParentID],
	[d].[ChildID]
FROM
	(
		SELECT DISTINCT
			[a_Parent1].[ParentID]
		FROM
			[Child] [t1]
				INNER JOIN [Parent] [a_Parent1] ON [t1].[ParentID] = [a_Parent1].[ParentID]
	) [m_1]
		INNER JOIN [Child] [d] ON [m_1].[ParentID] = (
			SELECT
				[a_Parent1_1].[ParentID]
			FROM
				[Parent] [a_Parent1_1]
			WHERE
				[d].[ParentID] = [a_Parent1_1].[ParentID]
		)

BeforeExecute
-- SqlServer.Contained SqlServer.2019 (asynchronously)

SELECT
	[a_Parent1].[ParentID]
FROM
	[Child] [t1]
		INNER JOIN [Parent] [a_Parent1] ON [t1].[ParentID] = [a_Parent1].[ParentID]
GROUP BY
	[a_Parent1].[ParentID]

BeforeExecute
DisposeTransactionAsync
