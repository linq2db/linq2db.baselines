BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 3

SELECT
	MIN([t2].[ParentID])
FROM
	(
		SELECT TOP (@take)
			[t1].[ParentID]
		FROM
			[Parent] [t1]
		ORDER BY
			[t1].[ParentID]
	) [t2]

