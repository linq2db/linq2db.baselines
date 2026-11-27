-- SQLite.Classic SQLite
SELECT
	[ka].[PersonId],
	[ka].[ValidationEnd],
	[a_PersonData].[Id],
	[a_PersonData].[Name],
	[a_PersonData].[Age]
FROM
	[Chipcard] [ka]
		LEFT JOIN [ChipcardPerson] [a_PersonData] ON [a_PersonData].[Id] = [ka].[PersonId]
WHERE
	[a_PersonData].[Id] IS NOT NULL

