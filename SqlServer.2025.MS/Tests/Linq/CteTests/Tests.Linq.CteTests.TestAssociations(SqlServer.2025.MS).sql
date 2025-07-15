BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

WITH [BooksCte] ([AuthorId], [Title])
AS
(
	SELECT
		[t1].[AuthorId],
		[t1].[Title]
	FROM
		[Books] [t1]
)
SELECT
	[b].[Title]
FROM
	[BooksCte] [b]
		INNER JOIN [Authors] [a_Author] ON [b].[AuthorId] = [a_Author].[Id]
WHERE
	[a_Author].[Name] = N'Steven'

