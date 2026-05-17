-- Access.Jet.Odbc AccessODBC

SELECT TOP 1
	[t1].[Anchor] - IIF([t1].[Sum_1] IS NULL, 0, [t1].[Sum_1])
FROM
	(
		SELECT
			[o].[Anchor],
			(
				SELECT
					SUM([i].[DecimalValue])
				FROM
					[Inner] [i]
				WHERE
					[i].[Group] = [o].[Group]
			) as [Sum_1],
			[o].[Id]
		FROM
			[Outer] [o]
	) [t1]
WHERE
	[t1].[Id] = 1

