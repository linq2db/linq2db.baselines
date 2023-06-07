BeforeExecute
-- SqlCe
DECLARE @testValue Int -- Int32
SET     @testValue = 3

SELECT
	[t3].[c1],
	[t1].[Count1],
	[t2].[Count2]
FROM
	(
		SELECT DISTINCT
			CASE
				WHEN [id].[Value1] IS NULL
					THEN [id].[ParentID]
				ELSE [id].[ParentID] + 1
			END as [c1]
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
		) [t1] ON [t1].[ParentID] = [t3].[c1]
		LEFT JOIN (
			SELECT
				Count(*) as [Count2],
				[p_1].[ParentID]
			FROM
				[Child] [p_1]
			WHERE
				[p_1].[ParentID] = @testValue
			GROUP BY
				[p_1].[ParentID]
		) [t2] ON [t2].[ParentID] = [t3].[c1]

