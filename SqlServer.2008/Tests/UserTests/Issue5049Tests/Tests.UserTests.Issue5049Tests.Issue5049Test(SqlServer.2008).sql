BeforeExecute
-- SqlServer.2008

SELECT
	[p].[Id],
	[p].[Name],
	[t1].[Key_1],
	[t1].[AverageGrade]
FROM
	[PersonWithAssociation] [p]
		CROSS APPLY (
			SELECT
				AVG(CAST([a_GradeStats].[Grade] AS Float)) as [AverageGrade],
				[a_GradeStats].[PersonId] as [Key_1]
			FROM
				[PersonGrades] [a_GradeStats]
			WHERE
				[a_GradeStats].[PersonId] = [p].[Id]
			GROUP BY
				[a_GradeStats].[PersonId]
		) [t1]
WHERE
	[t1].[AverageGrade] > 5

