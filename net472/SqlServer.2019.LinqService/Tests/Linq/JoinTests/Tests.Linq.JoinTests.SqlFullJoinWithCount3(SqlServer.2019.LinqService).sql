BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @take Int -- Int32
SET     @take = 2
DECLARE @id Int -- Int32
SET     @id = 1

SELECT TOP (@take)
	COUNT([left_1].[ParentID]),
	COUNT([t1].[ParentID]),
	COUNT(*)
FROM
	[Parent] [left_1]
		FULL JOIN (
			SELECT
				[p].[ParentID]
			FROM
				[Parent] [p]
			WHERE
				[p].[ParentID] <> @id
		) [t1] ON [t1].[ParentID] = [left_1].[ParentID]

