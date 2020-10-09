BeforeExecute
-- SqlServer.2005
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
					[p].[ParentID], 
					ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) as [RN]
				FROM
					[Parent] [p]
			) [t1]
		WHERE
			[t1].[RN] > @skip AND [t1].[RN] <= (@skip + @take)
	)

