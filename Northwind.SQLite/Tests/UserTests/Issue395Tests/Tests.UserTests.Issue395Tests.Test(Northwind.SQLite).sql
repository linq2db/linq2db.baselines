BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite

SELECT
	[t1].[Key_1],
	[t1].[SUM_1],
	[t1].[SUM_2],
	[t1].[SUM_3]
FROM
	(
		SELECT
			[x_3].[Key_1],
			SUM([x_3].[Via1]) as [SUM_1],
			SUM([x_3].[Via2]) as [SUM_2],
			SUM([x_3].[Via3]) as [SUM_3]
		FROM
			(
				SELECT
					[x].[ShipCountry] as [Key_1],
					[x].[Freight] as [Via1],
					CAST(0 AS Decimal) as [Via2],
					CAST(0 AS Decimal) as [Via3]
				FROM
					[Orders] [x]
				WHERE
					[x].[ShipVia] = 1
				UNION
				SELECT
					[x_1].[ShipCountry] as [Key_1],
					CAST(0 AS Decimal) as [Via1],
					[x_1].[Freight] as [Via2],
					CAST(0 AS Decimal) as [Via3]
				FROM
					[Orders] [x_1]
				WHERE
					[x_1].[ShipVia] = 2
				UNION
				SELECT
					[x_2].[ShipCountry] as [Key_1],
					CAST(0 AS Decimal) as [Via1],
					CAST(0 AS Decimal) as [Via2],
					[x_2].[Freight] as [Via3]
				FROM
					[Orders] [x_2]
				WHERE
					[x_2].[ShipVia] = 3
			) [x_3]
		GROUP BY
			[x_3].[Key_1]
	) [t1]
LIMIT 1

BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite
DECLARE @ShipCountry NVarChar(9) -- String
SET     @ShipCountry = 'Argentina'

SELECT
	SUM([x].[Freight])
FROM
	[Orders] [x]
WHERE
	[x].[ShipVia] = 1 AND [x].[ShipCountry] = @ShipCountry

BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite
DECLARE @ShipCountry NVarChar(9) -- String
SET     @ShipCountry = 'Argentina'

SELECT
	SUM([x].[Freight])
FROM
	[Orders] [x]
WHERE
	[x].[ShipVia] = 2 AND [x].[ShipCountry] = @ShipCountry

BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite
DECLARE @ShipCountry NVarChar(9) -- String
SET     @ShipCountry = 'Argentina'

SELECT
	SUM([x].[Freight])
FROM
	[Orders] [x]
WHERE
	[x].[ShipVia] = 3 AND [x].[ShipCountry] = @ShipCountry

