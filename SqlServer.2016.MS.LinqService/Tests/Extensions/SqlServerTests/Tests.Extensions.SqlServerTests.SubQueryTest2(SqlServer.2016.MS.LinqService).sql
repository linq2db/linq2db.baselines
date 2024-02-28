BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @take Int -- Int32
SET     @take = 1

SELECT
	[t1].[cc]
FROM
	[Child] [c_1]
		OUTER APPLY (
			SELECT TOP (@take)
				[c1].[ChildID] as [cc]
			FROM
				[Child] [c1] WITH (NoLock)
			WHERE
				[c1].[ParentID] = [c_1].[ParentID]
		) [t1]

