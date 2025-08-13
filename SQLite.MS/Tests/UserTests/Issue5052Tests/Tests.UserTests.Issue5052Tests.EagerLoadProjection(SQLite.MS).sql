BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.MS SQLite

SELECT
	[l].[Id],
	[dtoLocationMapping].[id],
	[dtoLocationMapping].[Description]
FROM
	[test_location] [dtoLocationMapping]
		LEFT JOIN [test_link_person_location] [l] ON [l].[Id] = 5
WHERE
	[dtoLocationMapping].[id] = 1

BeforeExecute
DisposeTransaction
BeforeExecute
-- SQLite.MS SQLite

SELECT
	[dtoPersonDto].[Id],
	[dtoPersonDto].[Name]
FROM
	[test_person] [dtoPersonDto]
WHERE
	[dtoPersonDto].[Id] = 1

