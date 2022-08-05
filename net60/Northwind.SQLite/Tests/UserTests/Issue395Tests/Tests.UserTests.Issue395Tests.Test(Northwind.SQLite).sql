﻿BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite

SELECT
	[t1].[ShipCountry],
	Sum([t1].[Via1]),
	Sum([t1].[Via3]),
	Sum([t1].[Via3_1])
FROM
	(
		SELECT
			[x].[ShipCountry],
			[x].[Freight] as [Via1],
			0 as [Via3],
			0 as [Via3_1]
		FROM
			[Orders] [x]
		WHERE
			[x].[ShipVia] = 1
		UNION
		SELECT
			[x_1].[ShipCountry],
			0 as [Via1],
			[x_1].[Freight] as [Via3],
			0 as [Via3_1]
		FROM
			[Orders] [x_1]
		WHERE
			[x_1].[ShipVia] = 2
		UNION
		SELECT
			[x_2].[ShipCountry],
			0 as [Via1],
			0 as [Via3],
			[x_2].[Freight] as [Via3_1]
		FROM
			[Orders] [x_2]
		WHERE
			[x_2].[ShipVia] = 3
	) [t1]
GROUP BY
	[t1].[ShipCountry]
LIMIT 1

BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite
DECLARE @ShipCountry NVarChar(9) -- String
SET     @ShipCountry = 'Argentina'

SELECT
	Sum([x].[Freight])
FROM
	[Orders] [x]
WHERE
	[x].[ShipVia] = 1 AND [x].[ShipCountry] = @ShipCountry

BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite
DECLARE @ShipCountry NVarChar(9) -- String
SET     @ShipCountry = 'Argentina'

SELECT
	Sum([x].[Freight])
FROM
	[Orders] [x]
WHERE
	[x].[ShipVia] = 2 AND [x].[ShipCountry] = @ShipCountry

BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite
DECLARE @ShipCountry NVarChar(9) -- String
SET     @ShipCountry = 'Argentina'

SELECT
	Sum([x].[Freight])
FROM
	[Orders] [x]
WHERE
	[x].[ShipVia] = 3 AND [x].[ShipCountry] = @ShipCountry

