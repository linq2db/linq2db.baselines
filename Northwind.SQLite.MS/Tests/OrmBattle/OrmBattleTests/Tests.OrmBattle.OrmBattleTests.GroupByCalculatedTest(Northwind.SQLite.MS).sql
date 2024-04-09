BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite

SELECT
	[t1].[Key_1]
FROM
	(
		SELECT
			CASE
				WHEN [selectParam].[Freight] > 50
					THEN CASE
					WHEN [selectParam].[Freight] > 100
						THEN 'expensive'
					ELSE 'average'
				END
				ELSE 'cheap'
			END as [Key_1]
		FROM
			[Orders] [selectParam]
	) [t1]
GROUP BY
	[t1].[Key_1]

