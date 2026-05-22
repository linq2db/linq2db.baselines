-- SQLite.Classic SQLite

CREATE TEMPORARY TABLE temp.[T_051fad49a0f6]
(
	[Id]   INTEGER       NOT NULL,
	[Data] NVarChar(255)     NULL
)

-- SQLite.Classic SQLite

INSERT INTO temp.[T_051fad49a0f6]
(
	[Id],
	[Data]
)
VALUES
(20,'Data 20'),
(21,'Data 21'),
(22,'Data 22')

-- SQLite.Classic SQLite

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
		INNER JOIN temp.[T_051fad49a0f6] [r] ON [p].[PersonID] = [r].[Id]

-- SQLite.Classic SQLite

DROP TABLE IF EXISTS temp.[T_051fad49a0f6]

