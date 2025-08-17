BeforeExecute
-- SqlCe (asynchronously)
DECLARE @testValue Int -- Int32
SET     @testValue = 3

SELECT
	[id_1].[c1],
	[t1].[COUNT_1],
	[t2].[COUNT_1] as [COUNT_2]
FROM
	(
		SELECT DISTINCT
			CASE
				WHEN [id].[Value1] IS NULL THEN [id].[ParentID]
				ELSE [id].[ParentID] + 1
			END as [c1]
		FROM
			[Parent] [id]
		WHERE
			[id].[ParentID] IN (1, 2)
	) [id_1]
		OUTER APPLY (
			SELECT
				COUNT(*) as [COUNT_1]
			FROM
				[Child] [p]
			WHERE
				[p].[ParentID] = [id_1].[c1]
		) [t1]
		OUTER APPLY (
			SELECT
				COUNT(*) as [COUNT_1]
			FROM
				[Child] [p_1]
			WHERE
				[p_1].[ParentID] = [id_1].[c1] AND [p_1].[ParentID] = @testValue
		) [t2]

