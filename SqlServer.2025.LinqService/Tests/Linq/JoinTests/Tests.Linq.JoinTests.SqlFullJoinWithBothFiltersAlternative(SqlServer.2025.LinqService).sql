BeforeExecute
-- SqlServer.2025 SqlServer.2022
DECLARE @id1 Int -- Int32
SET     @id1 = 1
DECLARE @id2 Int -- Int32
SET     @id2 = 2

SELECT
	[t2].[ParentID],
	[t1].[ParentID]
FROM
	(
		SELECT
			[left_1].[ParentID]
		FROM
			[Parent] [left_1]
		WHERE
			[left_1].[ParentID] <> @id1
	) [t2]
		FULL JOIN (
			SELECT
				[right_1].[ParentID]
			FROM
				[Parent] [right_1]
			WHERE
				[right_1].[ParentID] <> @id2
		) [t1] ON [t1].[ParentID] = [t2].[ParentID]
ORDER BY
	[t2].[ParentID]

