BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[p].[ParentID],
	(
		SELECT
			Count(*)
		FROM
			[Child] [a_Children]
		WHERE
			[a_Children].[ParentID] = [p].[ParentID] AND Convert(Decimal, [a_Children].[ChildID]) <> 0 AND
			[p].[ParentID] = [a_Children].[ParentID]
	)
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] <> 5

