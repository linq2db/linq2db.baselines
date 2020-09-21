BeforeExecute
-- SqlServer.2008
DECLARE @take Int -- Int32
SET     @take = 5

SELECT
	(
		SELECT
			Count(*)
		FROM
			[Child] [t1]
		WHERE
			[p].[ParentID] = [t1].[ParentID]
	)
FROM
	(
		SELECT TOP (@take)
			[t2].[ParentID]
		FROM
			[Parent] [t2]
	) [p]
ORDER BY
	[p].[ParentID] DESC

