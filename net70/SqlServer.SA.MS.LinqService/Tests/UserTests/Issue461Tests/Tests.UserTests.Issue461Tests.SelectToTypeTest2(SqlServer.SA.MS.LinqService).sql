BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 1

SELECT
	[t1].[Child]
FROM
	[Parent] [sep]
		OUTER APPLY (
			SELECT TOP (@take)
				[l].[ParentID] as [Child]
			FROM
				[Child] [l]
		) [t1]

