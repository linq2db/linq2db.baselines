BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @id1 Int -- Int32
SET     @id1 = 1
DECLARE @id2 Int -- Int32
SET     @id2 = 2

SELECT
	[t2].[left_1],
	[t1].[ParentID]
FROM
	(
		SELECT
			[left_1].[ParentID] as [left_1],
			[left_1].[Value1]
		FROM
			[Parent] [left_1]
		WHERE
			[left_1].[ParentID] <> @id1
	) [t2]
		FULL JOIN (
			SELECT
				[right_1].[ParentID],
				[right_1].[Value1]
			FROM
				[Parent] [right_1]
			WHERE
				[right_1].[ParentID] <> @id2
		) [t1] ON [t1].[ParentID] = [t2].[left_1]
ORDER BY
	IIF([t2].[left_1] IS NOT NULL, [t2].[left_1], NULL)

