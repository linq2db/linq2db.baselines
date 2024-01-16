BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
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
				SELECT TOP (@take)
					[p].[ParentID]
				FROM
					[Parent] [p]
			) [t1]
	)

