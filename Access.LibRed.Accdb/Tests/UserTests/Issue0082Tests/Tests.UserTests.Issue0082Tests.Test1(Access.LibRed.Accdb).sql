-- Access.LibRed.Accdb Access.LibRed AccessLibRed
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
	CASE
		WHEN [t1].[SumResult] IS NULL THEN 0
		ELSE [t1].[SumResult]
	END
FROM
	[Parent] [t2]
		OUTER APPLY (
			SELECT
				SUM([od].[ParentID]) as [SumResult]
			FROM
				[Child] [od]
			WHERE
				[t2].[ParentID] = [od].[ParentID]
		) [t1]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	COUNT(*)
FROM
	[Parent] [t1]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
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
					[x].[ParentID] = [od_1].[ParentID]
			) as [CountResult],
			[x].[ParentID],
			CASE
				WHEN [t1].[SumResult] IS NULL THEN 0
				ELSE [t1].[SumResult]
			END as [SumResult]
		FROM
			[Parent] [x]
				OUTER APPLY (
					SELECT
						SUM([od].[ParentID]) as [SumResult]
					FROM
						[Child] [od]
					WHERE
						[x].[ParentID] = [od].[ParentID]
				) [t1]
	) [x_1]
WHERE
	[x_1].[CountResult] > 0

