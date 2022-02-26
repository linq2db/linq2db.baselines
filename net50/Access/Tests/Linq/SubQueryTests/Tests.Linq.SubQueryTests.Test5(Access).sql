BeforeExecute
-- Access AccessOleDb
DECLARE @_testValue Integer -- Int32
SET     @_testValue = 3

SELECT
	[t3].[c2],
	[t1].[Count1],
	[t2].[Count2]
FROM
	((
		SELECT DISTINCT
			Iif([id].[Value1] IS NULL, [id].[ParentID], [id].[ParentID] + 1) as [c1],
			Iif([id].[Value1] IS NULL, [id].[ParentID], [id].[ParentID] + 1) as [c2],
			Iif([id].[Value1] IS NULL, [id].[ParentID], [id].[ParentID] + 1) as [c3]
		FROM
			[Parent] [id]
		WHERE
			[id].[ParentID] IN (1, 2)
	) [t3]
		LEFT JOIN (
			SELECT
				Count(*) as [Count1],
				[p].[ParentID]
			FROM
				[Child] [p]
			GROUP BY
				[p].[ParentID]
		) [t1] ON ([t1].[ParentID] = [t3].[c3]))
		LEFT JOIN (
			SELECT
				Count(*) as [Count2],
				[p_1].[ParentID]
			FROM
				[Child] [p_1]
			WHERE
				[p_1].[ParentID] = @_testValue
			GROUP BY
				[p_1].[ParentID]
		) [t2] ON ([t2].[ParentID] = [t3].[c3])

