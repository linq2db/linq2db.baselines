BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[m_1].[ParentID],
	[d_1].[Detail]
FROM
	(
		SELECT DISTINCT
			[p].[ParentID]
		FROM
			[Parent] [p]
	) [m_1]
		INNER JOIN (
			SELECT
				[d].[ParentID] as [Detail]
			FROM
				[Child] [d]
			GROUP BY
				[d].[ParentID]
		) [d_1] ON [m_1].[ParentID] = [d_1].[Detail]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

