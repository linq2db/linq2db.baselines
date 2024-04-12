BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[pp].[ParentID],
	(
		SELECT
			COUNT(*)
		FROM
			[Child] [a_Children]
		WHERE
			[pp].[ParentID] = [a_Children].[ParentID]
	)
FROM
	[Parent] [pp]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[pp].[ParentID],
	(
		SELECT
			COUNT(*)
		FROM
			[Child] [a_Children]
		WHERE
			[pp].[ParentID] = [a_Children].[ParentID]
	)
FROM
	[Parent] [pp]

