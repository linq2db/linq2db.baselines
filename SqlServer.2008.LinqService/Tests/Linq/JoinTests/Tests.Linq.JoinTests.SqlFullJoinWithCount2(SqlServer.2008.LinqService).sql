BeforeExecute
-- SqlServer.2008
DECLARE @id Int -- Int32
SET     @id = 1

SELECT TOP (2)
	[t1].[c1]
FROM
	(
		SELECT
			CASE
				WHEN COUNT([left_1].[ParentID]) = COUNT([right_1].[ParentID]) AND COUNT([left_1].[ParentID]) = COUNT(*)
					THEN 1
				ELSE 0
			END as [c1]
		FROM
			(
				SELECT
					[p].[ParentID]
				FROM
					[Parent] [p]
				WHERE
					[p].[ParentID] <> @id
			) [left_1]
				FULL JOIN [Parent] [right_1] ON [right_1].[ParentID] = [left_1].[ParentID]
	) [t1]

