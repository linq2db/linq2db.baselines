-- SqlServer.Contained SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 3

SELECT TOP (@take)
	[t1].[Value1]
FROM
	(
		SELECT DISTINCT
			[p].[Value1]
		FROM
			[Parent] [p]
	) [t1]
ORDER BY
	IIF([t1].[Value1] IS NULL, 0, 1),
	[t1].[Value1]

-- SqlServer.Contained SqlServer.2019

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

