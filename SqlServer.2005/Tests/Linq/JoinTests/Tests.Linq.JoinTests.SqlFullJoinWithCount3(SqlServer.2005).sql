BeforeExecute
-- SqlServer.2005
DECLARE @id Int -- Int32
SET     @id = 1

SELECT TOP (2)
	[t1].[c1]
FROM
	(
		SELECT
			CASE
				WHEN COUNT([left_1].[ParentID]) = COUNT([right_2].[ParentID]) AND COUNT([left_1].[ParentID]) = COUNT(*)
					THEN 1
				ELSE 0
			END as [c1]
		FROM
			[Parent] [left_1]
				FULL JOIN (
					SELECT
						[right_1].[ParentID]
					FROM
						[Parent] [right_1]
					WHERE
						[right_1].[ParentID] <> @id
				) [right_2] ON [right_2].[ParentID] = [left_1].[ParentID]
	) [t1]

