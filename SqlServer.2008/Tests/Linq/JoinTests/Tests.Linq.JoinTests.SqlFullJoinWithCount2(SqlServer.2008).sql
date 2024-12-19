BeforeExecute
-- SqlServer.2008
DECLARE @id Int -- Int32
SET     @id = 1

SELECT TOP (2)
	CASE
		WHEN COUNT([t1].[ParentID]) = COUNT([right_1].[ParentID]) AND COUNT([t1].[ParentID]) = COUNT(*)
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
			[p].[ParentID] <> @id
	) [t1]
		FULL JOIN [Parent] [right_1] ON [right_1].[ParentID] = [t1].[ParentID]

