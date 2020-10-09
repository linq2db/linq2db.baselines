BeforeExecute
-- Access AccessOleDb

SELECT 
	[t2].[Key_1]
FROM
	( 
		SELECT 
			Iif((
				SELECT 
					Avg([c_1].[ParentID])
				FROM
					[Child] [c_1]
				WHERE
					[p].[ParentID] = [c_1].[ParentID]
			) > 3, True, False) as [Key_1]
		FROM
			[Parent] [p]
		WHERE
			(
				SELECT 
					Count(*)
				FROM
					[Child] [t1]
				WHERE
					[p].[ParentID] = [t1].[ParentID]
			) > 0
	) [t2]
GROUP BY
	[t2].[Key_1]

