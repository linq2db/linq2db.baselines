-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @id  -- Int32
SET     @id = 1

SELECT TOP 2
	COUNT([t1].[ParentID]) = COUNT([right_2].[ParentID]) AND COUNT([t1].[ParentID]) = COUNT(*)
FROM
	(
		SELECT
			[p].[ParentID]
		FROM
			[Parent] [p]
		WHERE
			[p].[ParentID] <> @id
	) [t1]
		FULL JOIN (
			SELECT
				[right_1].[ParentID]
			FROM
				[Parent] [right_1]
			WHERE
				[right_1].[ParentID] <> @id
		) [right_2] ON ([right_2].[ParentID] = [t1].[ParentID])

