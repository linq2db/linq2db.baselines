BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

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

