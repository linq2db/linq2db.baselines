BeforeExecute
-- SqlServer.SA.MS SqlServer.2019 (asynchronously)
DECLARE @skip Int -- Int32
SET     @skip = 1
DECLARE @take Int -- Int32
SET     @take = 7
DECLARE @skip_1 Int -- Int32
SET     @skip_1 = 2

SELECT
	[t2].[ParentID],
	[t2].[ChildID]
FROM
	(
		SELECT
			[t1].[ChildID],
			[t1].[ParentID]
		FROM
			[Child] [t1]
		ORDER BY
			[t1].[ChildID] DESC
		OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 
	) [t2]
ORDER BY
	[t2].[ChildID]
OFFSET @skip_1 ROWS

