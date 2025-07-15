BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[c_1].[ParentID],
	[c_1].[Value1]
FROM
	[Parent] [c_1]
WHERE
	1 IN (
		SELECT
			[p].[Value1]
		FROM
			[Parent] [p]
	)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

