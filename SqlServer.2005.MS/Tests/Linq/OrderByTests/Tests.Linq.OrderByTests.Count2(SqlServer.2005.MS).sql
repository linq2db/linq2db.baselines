-- SqlServer.2005.MS SqlServer.2005
DECLARE @take Int -- Int32
SET     @take = 3

SELECT
	COUNT(*)
FROM
	(
		SELECT TOP (@take)
			*
		FROM
			[Parent] [t1]
		ORDER BY
			[t1].[ParentID]
	) [t2]

