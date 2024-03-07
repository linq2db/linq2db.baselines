BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	(
		SELECT
			Count(*)
		FROM
			[Parent] [a_Children]
		WHERE
			[p].[ParentID] = [a_Children].[Value1]
	)
FROM
	[Parent] [p]

