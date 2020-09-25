BeforeExecute
-- SqlServer.2016 SqlServer.2012
DECLARE @take Int -- Int32
SET     @take = 1

SELECT
	[t1].[ParentId],
	[t1].[Id]
FROM
	[Parent] [sep]
		OUTER APPLY (
			SELECT TOP (@take)
				[l].[ParentID] + 1 as [Id],
				[l].[ParentID] as [ParentId]
			FROM
				[Child] [l]
		) [t1]

