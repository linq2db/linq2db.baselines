BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @skip Int -- Int32
SET     @skip = 1
DECLARE @take Int -- Int32
SET     @take = 100

SELECT
	[c_1].[ParentID],
	[c_1].[ChildID]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] IN (
		SELECT
			[t1].[ParentID]
		FROM
			(
				SELECT
					[p].[ParentID]
				FROM
					[Parent] [p]
				ORDER BY
					1
				OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 
			) [t1]
	)

