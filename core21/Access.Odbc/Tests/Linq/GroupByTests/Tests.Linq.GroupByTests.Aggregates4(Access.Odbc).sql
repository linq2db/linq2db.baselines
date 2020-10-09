BeforeExecute
-- Access.Odbc AccessODBC

SELECT 
	Count([t1].[ParentID]), 
	(
		SELECT 
			Sum([keyParam].[ChildID])
		FROM
			[Child] [keyParam]
		WHERE
			[t2].[ParentID] = [keyParam].[ParentID] AND [keyParam].[ChildID] > 30
	)
FROM
	[Child] [t2]
		LEFT JOIN ( 
			SELECT 
				[keyParam_1].[ParentID]
			FROM
				[Child] [keyParam_1]
			WHERE
				[keyParam_1].[ChildID] > 30
			GROUP BY
				[keyParam_1].[ParentID]
		) [t1] ON ([t2].[ParentID] = [t1].[ParentID])
GROUP BY
	[t2].[ParentID]

