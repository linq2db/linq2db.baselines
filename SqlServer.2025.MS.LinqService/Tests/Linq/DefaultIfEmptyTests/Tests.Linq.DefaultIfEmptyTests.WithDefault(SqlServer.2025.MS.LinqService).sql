BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022
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

