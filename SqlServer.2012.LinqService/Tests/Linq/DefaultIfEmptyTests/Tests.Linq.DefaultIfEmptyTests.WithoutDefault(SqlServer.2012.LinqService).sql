BeforeExecute
-- SqlServer.2012
DECLARE @take Int -- Int32
SET     @take = 0

SELECT
	[d].[ParentID],
	[d].[ChildID]
FROM
	(
		SELECT
			1 as [c1]
	) [t2]
		LEFT JOIN (
			SELECT TOP (@take)
				[t1].[ParentID],
				[t1].[ChildID]
			FROM
				[Child] [t1]
		) [d] ON 1=1

