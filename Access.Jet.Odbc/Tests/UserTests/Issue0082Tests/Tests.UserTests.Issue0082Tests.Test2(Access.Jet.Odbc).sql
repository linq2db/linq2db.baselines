-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[ParentID],
	(
		SELECT
			COUNT(*)
		FROM
			[Child] [a_Children_1]
		WHERE
			[t1].[ParentID] = [a_Children_1].[ParentID]
	),
	IIF([t1].[SumResult] IS NULL, 0, [t1].[SumResult])
FROM
	(
		SELECT
			[o].[ParentID],
			(
				SELECT
					IIF(SUM([a_Children].[ParentID]) IS NULL, 0, SUM([a_Children].[ParentID]))
				FROM
					[Child] [a_Children]
				WHERE
					[o].[ParentID] = [a_Children].[ParentID]
			) as [SumResult]
		FROM
			[Parent] [o]
	) [t1]

-- Access.Jet.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[Parent] [o]

-- Access.Jet.Odbc AccessODBC

SELECT
	[x].[ParentID],
	[x].[CountResult],
	[x].[SumResult]
FROM
	(
		SELECT
			(
				SELECT
					COUNT(*)
				FROM
					[Child] [a_Children_1]
				WHERE
					[t1].[ParentID] = [a_Children_1].[ParentID]
			) as [CountResult],
			[t1].[ParentID],
			IIF([t1].[SumResult] IS NULL, 0, [t1].[SumResult]) as [SumResult]
		FROM
			(
				SELECT
					[o].[ParentID],
					(
						SELECT
							IIF(SUM([a_Children].[ParentID]) IS NULL, 0, SUM([a_Children].[ParentID]))
						FROM
							[Child] [a_Children]
						WHERE
							[o].[ParentID] = [a_Children].[ParentID]
					) as [SumResult]
				FROM
					[Parent] [o]
			) [t1]
	) [x]
WHERE
	[x].[CountResult] > 0

