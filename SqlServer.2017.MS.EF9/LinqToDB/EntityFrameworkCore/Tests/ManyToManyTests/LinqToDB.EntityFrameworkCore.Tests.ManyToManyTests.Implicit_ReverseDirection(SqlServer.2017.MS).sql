SELECT [c].[Id]
FROM [Courses] AS [c]
WHERE EXISTS (
    SELECT 1
    FROM [MmCourseMmStudent] AS [m]
    INNER JOIN [Students] AS [s] ON [m].[StudentsId] = [s].[Id]
    WHERE [c].[Id] = [m].[CoursesId] AND [s].[Name] = N'Alice')
ORDER BY [c].[Id]


-- SqlServer.2017

SELECT
	[c_1].[Id]
FROM
	[Courses] [c_1]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[MmCourseMmStudent] [s]
				INNER JOIN [Students] [o] ON [o].[Id] = [s].[StudentsId]
		WHERE
			[c_1].[Id] = [s].[CoursesId] AND [o].[Name] = N'Alice'
	)
ORDER BY
	[c_1].[Id]



