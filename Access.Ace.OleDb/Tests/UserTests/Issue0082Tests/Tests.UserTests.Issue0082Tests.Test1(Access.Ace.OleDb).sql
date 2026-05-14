-- Access.Ace.OleDb AccessOleDb

SELECT
	[t2].[ParentID],
	(
		SELECT
			COUNT(*)
		FROM
			[Child] [od_1]
		WHERE
			[t2].[ParentID] = [od_1].[ParentID]
	),
	IIF([t2].[SumResult] IS NULL, 0, [t2].[SumResult])
FROM
	(
		SELECT
			[t1].[ParentID],
			(
				SELECT
					SUM([od].[ParentID])
				FROM
					[Child] [od]
				WHERE
					[t1].[ParentID] = [od].[ParentID]
			) as [SumResult]
		FROM
			[Parent] [t1]
	) [t2]

-- Access.Ace.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[Parent] [t1]

-- Access.Ace.OleDb AccessOleDb

SELECT
	[x_1].[ParentID],
	[x_1].[CountResult],
	[x_1].[SumResult]
FROM
	(
		SELECT
			(
				SELECT
					COUNT(*)
				FROM
					[Child] [od_1]
				WHERE
					[t1].[ParentID] = [od_1].[ParentID]
			) as [CountResult],
			[t1].[ParentID],
			IIF([t1].[SumResult] IS NULL, 0, [t1].[SumResult]) as [SumResult]
		FROM
			(
				SELECT
					[x].[ParentID],
					(
						SELECT
							SUM([od].[ParentID])
						FROM
							[Child] [od]
						WHERE
							[x].[ParentID] = [od].[ParentID]
					) as [SumResult]
				FROM
					[Parent] [x]
			) [t1]
	) [x_1]
WHERE
	[x_1].[CountResult] > 0

