BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[pp].[ParentID],
	(
		SELECT
			Count(*)
		FROM
			[Child] [a_Children]
		WHERE
			[pp].[ParentID] = [a_Children].[ParentID]
	)
FROM
	[Parent] [pp]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[pp].[ParentID],
	(
		SELECT
			Count(*)
		FROM
			[Child] [a_Children]
		WHERE
			[pp].[ParentID] = [a_Children].[ParentID]
	)
FROM
	[Parent] [pp]

