BeforeExecute
-- SqlServer.2008

SELECT
	[p].[ParentID],
	(
		SELECT
			Count(*)
		FROM
			[Child] [c_1]
		WHERE
			[p].[ParentID] = [c_1].[ParentID] AND [c_1].[ParentID] = [p].[ParentID] AND
			(Convert(Decimal(29, 10), [c_1].[ChildID]) <> 0 OR Convert(Decimal(29, 10), [c_1].[ChildID]) IS NULL)
	)
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] <> 5

