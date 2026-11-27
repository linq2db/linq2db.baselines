-- Access.Ace.OleDb AccessOleDb
SELECT
	[g_2].[Date_1],
	COUNT(*)
FROM
	(
		SELECT
			DateValue([g_1].[CreatedOnUtc]) as [Date_1]
		FROM
			[DateTimePrecisionTable] [g_1]
	) [g_2]
GROUP BY
	[g_2].[Date_1]

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[CreatedOnUtc]
FROM
	[DateTimePrecisionTable] [t1]

