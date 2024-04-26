BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [ComplexPerson]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [ComplexPerson]
(
	[Id]        INTEGER       NOT NULL,
	[FirstName] NVarChar(255)     NULL,
	[LastName]  NVarChar(255)     NULL,

	CONSTRAINT [PK_ComplexPerson] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	COUNT(*)
FROM
	(
		SELECT
			[x].[Id],
			[x].[FirstName],
			[x].[LastName]
		FROM
			[ComplexPerson] [x]
		WHERE
			[x].[Id] < 10
		UNION
		SELECT
			[x_1].[Id],
			[x_1].[FirstName],
			[x_1].[LastName]
		FROM
			[ComplexPerson] [x_1]
		WHERE
			[x_1].[Id] < 20
	) [t1]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [ComplexPerson]

