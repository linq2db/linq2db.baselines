BeforeExecute
-- SqlServer.2005
DECLARE @take Int -- Int32
SET     @take = 1

SELECT 
	[t1].[Id_1], 
	[t1].[Id]
FROM
	[Parent] [sep]
		OUTER APPLY ( 
			SELECT TOP (@take) 
				[l].[ParentID] + 1 as [Id], 
				[l].[ParentID] as [Id_1]
			FROM
				[Child] [l]
		) [t1]

