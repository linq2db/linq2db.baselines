-- SqlServer.2008.MS SqlServer.2008
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
	CASE
		WHEN [t1].[Value1] IS NULL THEN 0
		ELSE 1
	END,
	[t1].[Value1] DESC

-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

