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
		INNER JOIN [Issue1965Person] [a_PersonData] ON [a_PersonData].[Id] = [ka].[PersonId]

