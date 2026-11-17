-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[o].[ParentID],
	(
		SELECT
			COUNT(*)
		FROM
			[Child] [a_Children_1]
		WHERE
			[o].[ParentID] = [a_Children_1].[ParentID]
	),
	CASE
		WHEN [t1].[SumResult] IS NULL THEN 0
		ELSE [t1].[SumResult]
	END
FROM
	[Parent] [o]
		OUTER APPLY (
			SELECT
				SUM([a_Children].[ParentID]) as [SumResult]
			FROM
				[Child] [a_Children]
			WHERE
				[o].[ParentID] = [a_Children].[ParentID]
		) [t1]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	COUNT(*)
FROM
	[Parent] [o]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
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
					[o].[ParentID] = [a_Children_1].[ParentID]
			) as [CountResult],
			[o].[ParentID],
			CASE
				WHEN [t1].[SumResult] IS NULL THEN 0
				ELSE [t1].[SumResult]
			END as [SumResult]
		FROM
			[Parent] [o]
				OUTER APPLY (
					SELECT
						SUM([a_Children].[ParentID]) as [SumResult]
					FROM
						[Child] [a_Children]
					WHERE
						[o].[ParentID] = [a_Children].[ParentID]
				) [t1]
	) [x]
WHERE
	[x].[CountResult] > 0

