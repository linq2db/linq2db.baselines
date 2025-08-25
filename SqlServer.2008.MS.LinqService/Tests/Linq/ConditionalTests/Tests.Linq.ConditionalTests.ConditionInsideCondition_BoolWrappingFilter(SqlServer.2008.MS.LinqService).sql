BeforeExecute
-- SqlServer.2008.MS SqlServer.2008 (asynchronously)

SELECT
	[s].[Value_1]
FROM
	(
		SELECT
			CASE
				WHEN [p].[ParentID] % 2 = 0 THEN CASE
					WHEN [p].[ParentID] % 3 = 0 THEN 1
					ELSE 0
				END
				WHEN [p].[ParentID] % 4 = 0 THEN CASE
					WHEN [p].[ParentID] > 0 THEN 1
					ELSE 0
				END
				ELSE CASE
					WHEN [p].[ParentID] < 5 THEN 1
					ELSE 0
				END
			END as [Value_1]
		FROM
			[Parent] [p]
	) [s]
WHERE
	[s].[Value_1] = 1

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008 (asynchronously)

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
-- SqlServer.2008.MS SqlServer.2008 (asynchronously)

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

