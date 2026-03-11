-- SqlServer.2012.MS SqlServer.2012
DECLARE @id Int -- Int32
SET     @id = 1

SELECT TOP (2)
	IIF(COUNT([t1].[ParentID]) = COUNT([right_1].[ParentID]) AND COUNT([t1].[ParentID]) = COUNT(*), 1, 0)
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

