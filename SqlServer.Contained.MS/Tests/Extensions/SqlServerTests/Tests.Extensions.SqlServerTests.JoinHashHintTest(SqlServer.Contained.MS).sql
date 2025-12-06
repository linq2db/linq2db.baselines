-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[p].[ParentID],
	(
		SELECT
			COUNT(*)
		FROM
			[Child] [a_Children]
		WHERE
			[p].[ParentID] = [a_Children].[ParentID]
	)
FROM
	[Child] [c_1]
		INNER HASH JOIN [Parent] [p] ON [c_1].[ParentID] = [p].[ParentID]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Child] [a_Children_1]
		WHERE
			[p].[ParentID] = [a_Children_1].[ParentID]
	)

