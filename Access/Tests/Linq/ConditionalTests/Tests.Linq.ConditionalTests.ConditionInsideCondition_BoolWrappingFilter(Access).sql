BeforeExecute
-- Access AccessOleDb

SELECT
	[s_1].[Value_1]
FROM
	(
		SELECT
			IIF([s].[ParentID] MOD 2 = 0, IIF([s].[ParentID] MOD 3 = 0, True, False), IIF([s].[ParentID] MOD 4 = 0, IIF([s].[ParentID] > 0, True, False), IIF([s].[ParentID] < 5, True, False))) as [Value_1]
		FROM
			[Parent] [s]
	) [s_1]
WHERE
	[s_1].[Value_1] = True

BeforeExecute
BeginTransaction(Unspecified)
BeforeExecute
-- Access AccessOleDb

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
		INNER JOIN [Child] [d] ON ([m_1].[ParentID] = [d].[ParentID])

BeforeExecute
DisposeTransaction
BeforeExecute
-- Access AccessOleDb

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

