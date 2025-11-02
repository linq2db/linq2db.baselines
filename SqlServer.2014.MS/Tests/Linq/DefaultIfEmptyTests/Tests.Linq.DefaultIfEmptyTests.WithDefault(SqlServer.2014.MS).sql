-- SqlServer.2014.MS SqlServer.2014
DECLARE @take Int -- Int32
SET     @take = 0

SELECT
	[d].[cond],
	[d].[ChildID]
FROM
	(
		SELECT
			1 as [c1]
	) [t2]
		LEFT JOIN (
			SELECT TOP (@take)
				[t1].[ParentID] as [cond],
				[t1].[ChildID]
			FROM
				[Child] [t1]
		) [d] ON 1=1

