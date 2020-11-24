BeforeExecute
-- Northwind SqlServer.2017
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	[t2].[ShipCountry],
	Sum([t2].[Via1]),
	Sum([t2].[Via3]),
	Sum([t2].[Via3_1])
FROM
	(
		SELECT
			[t1].[ShipCountry],
			[t1].[Via1],
			[t1].[Via3],
			[t1].[Via3_1]
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
			) [t1]
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
	) [t2]
GROUP BY
	[t2].[ShipCountry]

BeforeExecute
-- Northwind SqlServer.2017
DECLARE @ShipCountry NVarChar(4000) -- String
SET     @ShipCountry = N'Argentina'

SELECT
	Sum([x].[Freight])
FROM
	[Orders] [x]
WHERE
	[x].[ShipVia] = 1 AND [x].[ShipCountry] = @ShipCountry

BeforeExecute
-- Northwind SqlServer.2017
DECLARE @ShipCountry NVarChar(4000) -- String
SET     @ShipCountry = N'Argentina'

SELECT
	Sum([x].[Freight])
FROM
	[Orders] [x]
WHERE
	[x].[ShipVia] = 2 AND [x].[ShipCountry] = @ShipCountry

BeforeExecute
-- Northwind SqlServer.2017
DECLARE @ShipCountry NVarChar(4000) -- String
SET     @ShipCountry = N'Argentina'

SELECT
	Sum([x].[Freight])
FROM
	[Orders] [x]
WHERE
	[x].[ShipVia] = 3 AND [x].[ShipCountry] = @ShipCountry

