BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [Issue2434Table]
(
	[Id]        INTEGER       NOT NULL,
	[FirstName] NVarChar(255)     NULL,
	[LastName]  NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[FirstName],
	[t1].[LastName],
	[t1].[FirstName] || ' ' || [t1].[LastName]
FROM
	[Issue2434Table] [t1]
ORDER BY
	[t1].[FirstName] || ' ' || [t1].[LastName]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE [Issue2434Table]

