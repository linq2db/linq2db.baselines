-- SQLite.MS SQLite

CREATE TEMPORARY TABLE temp.[T_518459d17dfd]
(
	[Id]   INTEGER       NOT NULL,
	[Data] NVarChar(255)     NULL
)

-- SQLite.MS SQLite

INSERT INTO temp.[T_518459d17dfd]
(
	[Id],
	[Data]
)
VALUES
(20,'Data 20'),
(21,'Data 21'),
(22,'Data 22')

-- SQLite.MS SQLite

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
		INNER JOIN temp.[T_518459d17dfd] [r] ON [p].[PersonID] = [r].[Id]

-- SQLite.MS SQLite

DROP TABLE IF EXISTS temp.[T_518459d17dfd]

