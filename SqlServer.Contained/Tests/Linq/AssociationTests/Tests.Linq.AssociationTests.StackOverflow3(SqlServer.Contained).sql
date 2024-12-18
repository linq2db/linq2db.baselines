BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	(
		SELECT
			COUNT(*)
		FROM
			[Parent] [a_Children]
		WHERE
			[p].[ParentID] = [a_Children].[Value1] AND [a_Children].[Value1] IS NOT NULL
	) <> 0

