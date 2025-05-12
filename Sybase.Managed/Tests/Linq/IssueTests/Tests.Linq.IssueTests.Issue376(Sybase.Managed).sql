BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[PersonID],
	[a_Doctor].[PersonID],
	[a_Doctor].[Taxonomy]
FROM
	[Person] [t1]
		LEFT JOIN [Doctor] [a_Doctor] ON [t1].[PersonID] = [a_Doctor].[PersonID]
WHERE
	'' = [a_Doctor].[Taxonomy] OR CHAR_LENGTH([a_Doctor].[Taxonomy]) >= 0 AND ('' <> [a_Doctor].[Taxonomy] OR [a_Doctor].[Taxonomy] IS NULL) OR
	[a_Doctor].[Taxonomy] IS NULL

