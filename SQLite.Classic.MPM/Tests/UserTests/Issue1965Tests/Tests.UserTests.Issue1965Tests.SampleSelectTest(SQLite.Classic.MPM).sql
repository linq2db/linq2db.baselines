BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue1965Person]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue1965Person]
(
	[Id]   INTEGER       NOT NULL,
	[Name] NVarChar(255)     NULL,
	[Age]  INTEGER       NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Chipcard]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Chipcard]
(
	[PersonId]      INTEGER   NOT NULL,
	[ValidationEnd] DateTime2 NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[ka].[PersonId],
	[ka].[ValidationEnd],
	[a_PersonData].[Id],
	[a_PersonData].[Name],
	[a_PersonData].[Age]
FROM
	[Chipcard] [ka]
		LEFT JOIN [Issue1965Person] [a_PersonData] ON [a_PersonData].[Id] = [ka].[PersonId]
WHERE
	[a_PersonData].[Id] IS NOT NULL

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Chipcard]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue1965Person]

