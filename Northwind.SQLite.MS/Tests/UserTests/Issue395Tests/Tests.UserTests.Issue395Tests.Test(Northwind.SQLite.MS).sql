BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite

SELECT
	[t1].[Key_1],
	SUM([t1].[Via1]),
	SUM([t1].[Via2]),
	SUM([t1].[Via3])
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
	) [t1]
GROUP BY
	[t1].[Key_1]
LIMIT 1

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @ShipCountry NVarChar(9) -- String
SET     @ShipCountry = 'Argentina'

SELECT
	SUM([x].[Freight])
FROM
	[Orders] [x]
WHERE
	[x].[ShipVia] = 1 AND [x].[ShipCountry] = @ShipCountry

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @ShipCountry NVarChar(9) -- String
SET     @ShipCountry = 'Argentina'

SELECT
	SUM([x].[Freight])
FROM
	[Orders] [x]
WHERE
	[x].[ShipVia] = 2 AND [x].[ShipCountry] = @ShipCountry

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @ShipCountry NVarChar(9) -- String
SET     @ShipCountry = 'Argentina'

SELECT
	SUM([x].[Freight])
FROM
	[Orders] [x]
WHERE
	[x].[ShipVia] = 3 AND [x].[ShipCountry] = @ShipCountry

