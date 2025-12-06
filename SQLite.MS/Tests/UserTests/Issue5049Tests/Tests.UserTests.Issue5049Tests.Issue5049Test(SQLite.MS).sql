-- SQLite.MS SQLite

SELECT
	[p].[Id],
	[p].[Name],
	[t1].[Key_1],
	[t1].[AverageGrade]
FROM
	[PersonWithAssociation] [p]
		INNER JOIN (
			SELECT
				AVG(CAST([a_GradeStats].[Grade] AS Float)) as [AverageGrade],
				[a_GradeStats].[PersonId] as [Key_1]
			FROM
				[PersonGrades] [a_GradeStats]
			GROUP BY
				[a_GradeStats].[PersonId]
		) [t1] ON [t1].[Key_1] = [p].[Id]
WHERE
	[t1].[AverageGrade] > 5

