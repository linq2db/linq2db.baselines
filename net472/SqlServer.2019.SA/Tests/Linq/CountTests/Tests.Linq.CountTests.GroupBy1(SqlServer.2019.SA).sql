BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT
	(
		SELECT
			Count(*)
		FROM
			[Child] [keyParam]
		WHERE
			[t1].[ParentID] = [keyParam].[ParentID] AND [keyParam].[ChildID] > 20
	)
FROM
	[Child] [t1]
GROUP BY
	[t1].[ParentID]

