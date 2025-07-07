BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022
DECLARE @id1 Int -- Int32
SET     @id1 = 1
DECLARE @id2 Int -- Int32
SET     @id2 = 2

SELECT
	[t1].[ParentID],
	[right_2].[cond]
FROM
	(
		SELECT
			[p].[ParentID]
		FROM
			[Parent] [p]
		WHERE
			[p].[ParentID] <> @id1
	) [t1]
		FULL JOIN (
			SELECT
				[right_1].[ParentID] as [cond],
				[right_1].[ParentID]
			FROM
				[Parent] [right_1]
			WHERE
				[right_1].[ParentID] <> @id2
		) [right_2] ON [right_2].[ParentID] = [t1].[ParentID]
ORDER BY
	[t1].[ParentID]

