BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t].[ParentID],
	(
		SELECT
			COUNT(*)
		FROM
			[Child] [a_Children]
		WHERE
			[t].[ParentID] = [a_Children].[ParentID]
	)
FROM
	[Parent] [t]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t].[ParentID],
	(
		SELECT
			COUNT(*)
		FROM
			[Child] [a_Children]
		WHERE
			[t].[ParentID] = [a_Children].[ParentID]
	)
FROM
	[Parent] [t]

