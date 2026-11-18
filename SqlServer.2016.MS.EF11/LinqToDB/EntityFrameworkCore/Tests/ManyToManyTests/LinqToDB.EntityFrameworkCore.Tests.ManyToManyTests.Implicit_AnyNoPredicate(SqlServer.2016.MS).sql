SELECT [s].[Id]
FROM [Students] AS [s]
WHERE EXISTS (
    SELECT 1
    FROM [MmCourseMmStudent] AS [m]
    WHERE [s].[Id] = [m].[StudentsId])
ORDER BY [s].[Id]


-- SqlServer.2016
SELECT
	[s].[Id]
FROM
	[Students] [s]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[MmCourseMmStudent] [j]
				INNER JOIN [Courses] [o] ON [o].[Id] = [j].[CoursesId]
		WHERE
			[s].[Id] = [j].[StudentsId]
	)
ORDER BY
	[s].[Id]



