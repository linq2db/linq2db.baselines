BeforeExecute
-- Access AccessOleDb

SELECT 
	[o].[ParentID], 
	[t2].[CountResult], 
	(
		SELECT 
			Sum([od].[ParentID])
		FROM
			[Child] [od]
		WHERE
			[od].[ParentID] = [o].[ParentID]
	)
FROM
	[Parent] [o]
		LEFT JOIN ( 
			SELECT 
				Count(*) as [CountResult], 
				[t1].[ParentID]
			FROM
				[Child] [t1]
			GROUP BY
				[t1].[ParentID]
		) [t2] ON ([o].[ParentID] = [t2].[ParentID])

BeforeExecute
-- Access AccessOleDb

SELECT 
	Count(*)
FROM
	[Parent] [o]

BeforeExecute
-- Access AccessOleDb

SELECT 
	[x].[ParentID], 
	[x].[CountResult], 
	[x].[Sum_1]
FROM
	( 
		SELECT 
			[t2].[CountResult], 
			[o].[ParentID], 
			(
				SELECT 
					Sum([od].[ParentID])
				FROM
					[Child] [od]
				WHERE
					[od].[ParentID] = [o].[ParentID]
			) as [Sum_1]
		FROM
			[Parent] [o]
				LEFT JOIN ( 
					SELECT 
						Count(*) as [CountResult], 
						[t1].[ParentID]
					FROM
						[Child] [t1]
					GROUP BY
						[t1].[ParentID]
				) [t2] ON ([o].[ParentID] = [t2].[ParentID])
	) [x]
WHERE
	[x].[CountResult] > 0

