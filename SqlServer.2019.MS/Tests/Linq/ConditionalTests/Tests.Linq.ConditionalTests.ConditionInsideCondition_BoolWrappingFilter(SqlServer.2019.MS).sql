BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	[s_1].[Value_1]
FROM
	(
		SELECT
			CASE
				WHEN [s].[ParentID] % 2 = 0 THEN IIF([s].[ParentID] % 3 = 0, 1, 0)
				WHEN [s].[ParentID] % 4 = 0 THEN IIF([s].[ParentID] > 0, 1, 0)
				ELSE IIF([s].[ParentID] < 5, 1, 0)
			END as [Value_1]
		FROM
			[Parent] [s]
	) [s_1]
WHERE
	[s_1].[Value_1] = 1

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

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

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

