BeforeExecute
-- SqlServer.2012
DECLARE @take Int -- Int32
SET     @take = 3

SELECT 
	[c_1].[ParentID], 
	[c_1].[ChildID]
FROM
	[Child] [c_1],
	( 
		SELECT TOP (@take) 
			[p].[ParentID]
		FROM
			[GrandChild] [p]
	) [t1]
WHERE
	[c_1].[ParentID] = [t1].[ParentID]

BeforeExecute
-- SqlServer.2012
DECLARE @skip Int -- Int32
SET     @skip = 12
DECLARE @take Int -- Int32
SET     @take = 3

SELECT 
	[c_1].[ParentID], 
	[c_1].[ChildID]
FROM
	[Child] [c_1],
	( 
		SELECT 
			[p].[ParentID]
		FROM
			[GrandChild] [p]
		ORDER BY
			1
		OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 
	) [t1]
WHERE
	[c_1].[ParentID] = [t1].[ParentID]

