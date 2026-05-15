-- Access.Ace.OleDb AccessOleDb

SELECT TOP 1
	1000 - IIF([t1].[Sum_1] IS NULL, 0, [t1].[Sum_1])
FROM
	(
		SELECT
			(
				SELECT
					SUM([i].[FloatValue])
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
	[t1].[Id] = 2

