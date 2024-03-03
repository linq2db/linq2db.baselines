BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite

SELECT
	[t3].[ShipCountry],
	Sum([t3].[Via1]),
	Sum([t3].[Via2]),
	Sum([t3].[Via3])
FROM
	(
		SELECT
			[x_1].[ShipCountry],
			[x_1].[Via1],
			[x_1].[Via2],
			[x_1].[Via2] as [Via3]
		FROM
			(
				SELECT
					[x].[ShipCountry],
					[x].[Freight] as [Via1],
					0 as [Via2]
				FROM
					[Orders] [x]
				WHERE
					[x].[ShipVia] = 1
			) [x_1]
		UNION
		SELECT
			[t1].[ShipCountry],
			[t1].[Via1],
			[t1].[Via2],
			[t1].[Via1] as [Via3]
		FROM
			(
				SELECT
					[x_2].[ShipCountry],
					0 as [Via1],
					[x_2].[Freight] as [Via2]
				FROM
					[Orders] [x_2]
				WHERE
					[x_2].[ShipVia] = 2
			) [t1]
		UNION
		SELECT
			[t2].[ShipCountry],
			[t2].[Via1],
			[t2].[Via1] as [Via2],
			[t2].[Via3]
		FROM
			(
				SELECT
					[x_3].[ShipCountry],
					0 as [Via1],
					[x_3].[Freight] as [Via3]
				FROM
					[Orders] [x_3]
				WHERE
					[x_3].[ShipVia] = 3
			) [t2]
	) [t3]
GROUP BY
	[t3].[ShipCountry]
LIMIT 1

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @ShipCountry NVarChar(9) -- String
SET     @ShipCountry = 'Argentina'

SELECT
	Sum([x].[Freight])
FROM
	[Orders] [x]
WHERE
	[x].[ShipCountry] = @ShipCountry AND [x].[ShipVia] = 1

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @ShipCountry NVarChar(9) -- String
SET     @ShipCountry = 'Argentina'

SELECT
	Sum([x].[Freight])
FROM
	[Orders] [x]
WHERE
	[x].[ShipCountry] = @ShipCountry AND [x].[ShipVia] = 2

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @ShipCountry NVarChar(9) -- String
SET     @ShipCountry = 'Argentina'

SELECT
	Sum([x].[Freight])
FROM
	[Orders] [x]
WHERE
	[x].[ShipCountry] = @ShipCountry AND [x].[ShipVia] = 3

