BeforeExecute
-- SqlServer.2008
DECLARE @id1 Int -- Int32
SET     @id1 = 1
DECLARE @id2 Int -- Int32
SET     @id2 = 2

SELECT TOP (2)
	CASE
		WHEN COUNT([t1].[ParentID]) = COUNT([right_2].[ParentID]) AND COUNT([t1].[ParentID]) = COUNT(*)
			THEN 1
		ELSE 0
	END
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
				[right_1].[ParentID]
			FROM
				[Parent] [right_1]
			WHERE
				[right_1].[ParentID] <> @id2
		) [right_2] ON [right_2].[ParentID] = [t1].[ParentID]

